class DashboardsController < ApplicationController
  before_filter :authorize

  def index
  	@rooms = Room.all
  end
end
