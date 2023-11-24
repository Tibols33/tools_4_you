class DashboardsController < ApplicationController
  def profile
    @tools = current_user.tools
    @bookings = current_user.bookings
    @booked_tools = current_user.booked_tools
    @my_requests = Booking.where(tool: @tools)
  end
end
