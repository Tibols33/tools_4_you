class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
