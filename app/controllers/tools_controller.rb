class ToolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]

  def index
    @tools = Tool.all
    if params[:query].present?
      sql_subquery = <<~SQL
        tools.name @@ :query
        OR tools.description @@ :query
      SQL
      @tools = @tools.joins(:user).where(sql_subquery, query: params[:query])
    end
  end

  def show
    @tool = Tool.find(params[:id])
    @booking = Booking.new
    @markers = [{
        lat: @tool.latitude,
        lng: @tool.longitude
      }]
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.user = current_user
    if @tool.update(tool_params)
      redirect_to profile_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.user = current_user
    @tool.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :address, :price, :photo)
  end
end
