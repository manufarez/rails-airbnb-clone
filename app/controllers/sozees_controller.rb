class SozeesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def  index
    @sozees = Sozee.all
  end

  def new
    @sozee = Sozee.new
    authorize @sozee
  end

  def show
    @sozee = Sozee.find(params[:id])
    @booking = Booking.new
    authorize @sozee
  end

  def create
    @sozee = Sozee.new(sozee_params)
    @sozee.user = current_user
    authorize @sozee
    if @sozee.save
      redirect_to sozee_path(@sozee), notice: 'Your annonce was successfully created.'
    else
      render :new
    end
  end

  def destroy       # DELETE /sozees/:id
    @sozee = Sozee.find(params[:id])
    authorize @sozee
    @sozee.destroy
    redirect_to sozees_path
  end

  private

  def sozee_params
    params.require(:sozee).permit(:sozee_name, :description, :category, :price_per_hour, :photo, :id)
  end
end
