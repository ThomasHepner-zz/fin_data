class ReportsController < ApplicationController
  def new
  	@data_options = [{ type: 'UF', value: 1 }, { type: 'USD', value: 2}]
  end

  def show
  end

  def remote_lookup
  end
end
