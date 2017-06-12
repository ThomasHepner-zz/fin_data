class ReportsController < ApplicationController
	before_action :report_params, only: [:remote_lookup]

  def new
  	@data_options = [{ type: 'UF', value: 1 }, { type: 'USD', value: 2}]
  end

  def show
  end

  def remote_lookup
  	# TODO: make request to external API
  end

  private

  def report_params
  	params.permit(:data_type, :date_from, :date_to)
  end
end
