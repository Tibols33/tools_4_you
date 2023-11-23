class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only[:home, :show]
  def home
    @tools = Tool.all
  end
end
