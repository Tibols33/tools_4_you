class BookingsController < ApplicationController

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(booking_params)
    @booking.start_date = booking_params[:start_date].split('to')[0].strip
    @booking.end_date = booking_params[:start_date].split('to')[1].strip
    @booking.user = current_user
    @booking.tool = @tool
    @booking.status = "waiting"
    if @booking.save
      redirect_to profile_path
    else
      render 'tools/show', status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to profile_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
