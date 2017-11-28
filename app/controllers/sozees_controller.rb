class SozeesController < ApplicationController

  # authorize @sozee

  def  index
    @sozees = Sozee.all
  end

  def new
    @sozee = Sozee.new
  end

  def show
    @sozee = Sozee.find(params[:id])
    @booking = Booking.new
  end

  def create
    @sozee = Sozee.new(sozee_params)
    @sozee.user = current_user
    if @sozee.save
      redirect_to sozee_path(@sozee), notice: 'Your annonce was successfully created.'
    else
      render :new
    end
  end

  def destroy       # DELETE /sozees/:id
    @sozee = Sozee.find(params[:id])
    @sozee.destroy
    redirect_to sozees_path
  end

  private

  def sozee_params
    params.require(:sozee).permit(:sozee_name, :description, :category, :price_per_hour, :photo)
  end
end
