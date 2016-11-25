class Api < ApplicationRecord
  has_many :rooms

  validates :temp_max, presence: true
  validates :temp_mini, presence: true
  validates :temp, presence: true

  def temp_max
    read_attribute(:temp_max).to_i
  end

  def temp_mini
    read_attribute(:temp_mini).to_i
  end

  def temp
    read_attribute(:temp).to_f
  end
end
