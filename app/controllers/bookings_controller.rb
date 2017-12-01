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
      redirect_to sozee_path(@sozee), notice: 'Votre demande de réservation a bien été envoyée.'
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
    redirect_to dashboard_path, notice: 'Votre demande a bien été prise en compte.'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path, notice: 'Votre demande de suppression a bien été prise en compte.'
  end

  private

  def booking_params
    params.require(:booking).permit(:sozee_id, :user_id, :location, :day, :start_time, :end_time, :status, :bookingmessage)
  end
end
