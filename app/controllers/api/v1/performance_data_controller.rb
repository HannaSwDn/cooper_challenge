class Api::V1::PerformanceDataController < ApplicationController
  before_action :authenticate_api_v1_user!

  def create
    @data = PerformanceData.new(performance_data_params.merge(user: current_api_v1_user))
    
    if @data.save
      render json: { message: 'all good' }
    else
      render json: { error: @data.errors.full_messages, message: 'something went wrong...' }
    end
  end

  def index
    # double check this if statement
    if current_user = current_api_v1_user
      @collection = current_api_v1_user.performance_data
      render json: { entries: @collection }
    else
      return
    end
  end

  private

  def performance_data_params
    params.require(:performance_data).permit!
  end
end