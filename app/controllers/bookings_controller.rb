class BookingsController < ApplicationController

    def new
      @sozee = Sozee.find(params[:cocktail_id])
      @user = current_user
      @booking = Booking.new
    end


    def create
    @sozee = Sozee.find(params[:sozee_id])
    @user = current_user
    @booking = Boooking.new(booking_params)
    @booking.sozee = @sozee
    @booking.user = @user
      if @booking.save
        redirect_to sozee_path(@sozee), notice: 'The booking was successfully created.'
      else
        render :new
      end
    end

    def index
    @booking = Booking.all
    end

  private

  def booking_params
    params.require(:booking).permit(:sozee_id, :user_id, :location, :status)
  end
end
