class ApisController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def insert
    Api.create(api_params)
  end

  private
  def api_params
    params.permit(:temp_max, :temp_mini, :temp, :room_id)
  end
end
