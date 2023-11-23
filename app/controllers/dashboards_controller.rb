class DashboardsController < ApplicationController
  def profile
    @tools = current_user.tools
    @bookings = current_user.bookings
  end
end
