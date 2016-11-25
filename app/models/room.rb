class Room < ApplicationRecord
  has_many :apis

  def current_temp
    last_temp.temp
  end

  def temp_ok?
    current_temp > temperature_max || current_temp < temperature_minimum
  end

  private
  def last_temp
    apis.last
  end
end
