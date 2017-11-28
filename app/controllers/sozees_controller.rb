class SozeesController < ApplicationController
  def  index
    @sozees = Sozee.all
  end

  def show
    @sozee = Sozee.find(params[:id])
  end

  def new
    @sozee = Sozee.new
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

  private

  def sozee_params
<<<<<<< HEAD
    params.require(:sozee).permit(:sozee_name, :description, :category, :price_per_hour, :user_id)
=======
    params.require(:sozee).permit(:sozee_name, :description, :category, :price_per_hour, :photo)
>>>>>>> 58556a63ad546ae691f64b83d08872527a1824a9
  end
end
