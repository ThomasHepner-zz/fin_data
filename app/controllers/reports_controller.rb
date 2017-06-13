class ReportsController < ApplicationController
  include ReportsHelper

	before_action :report_params, only: [:remote_lookup]

  def index
    @reports = Report.all
  end

  def new
  	@data_options = [{ type: 'UF', value: 1 }, { type: 'USD', value: 2}]
  end

  def remote_lookup
    begin
      @response = if (params[:data_type] == '1')
                  uf_value_lookup(params[:date_from], params[:date_to])
               elsif (params[:data_type] == '2')
                  usd_value_lookup(params[:date_from], params[:date_to])
               end
      save_report
      @data_type = params[:data_type]
      render 'remote_lookup.js'
    rescue => e
      @message = 'An error has ocurred: the resource you were looking for is not available. Please try again later.'
      render 'error.js'
    end
  end

  private

  def report_params
  	params.permit(:data_type, :date_from, :date_to)
  end

  def uf_value_lookup(date_from, date_to)
    uri = uf_uri(date_from, date_to)
    result = HTTParty.get(uri)
    result.parsed_response['UFs']
  end

  def usd_value_lookup(date_from, date_to)
    uri = usd_uri(date_from, date_to)
    result = HTTParty.get(uri)
    result.parsed_response['Dolares']
  end

  def save_report
    Thread.new do
      if (report_params[:data_type] == '1') 
        data_type = 'UF'
      else
        data_type = 'USD'
      end
      Report.create(data_type: data_type,
                    date_from: report_params[:date_from],
                    date_to: report_params[:date_to])
      ActiveRecord::Base.connection.close
    end
  end
end
