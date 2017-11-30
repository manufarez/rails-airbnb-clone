class BookingsController < ApplicationController

  def new
    @sozee = Sozee.find(params[:sozee_id])
    @user = current_user
    @booking = Booking.new
    authorize @booking
  end

  def create
    @sozee = Sozee.find(params[:sozee_id])
    @booking = Booking.new(booking_params)
    @booking.sozee = @sozee
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to sozee_path(@sozee), notice: 'The booking was successfully created.'
    else
      render :new
    end
  end

  def edit
    @booking = booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    redirect_to dashboard_path, notice: 'The booking was successfully updated.'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path, notice: 'The booking was successfully deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:sozee_id, :user_id, :location, :starts_at, :ends_at, :status)
  end
end
