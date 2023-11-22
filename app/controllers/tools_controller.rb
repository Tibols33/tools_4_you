class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
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
  end

  def update
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path, status: :see_other
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :address, :price, :photo)
  end
end
