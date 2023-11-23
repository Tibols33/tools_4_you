class DashboardsController < ApplicationController
  def profile
    @tools = current_user.tools
  end
end
