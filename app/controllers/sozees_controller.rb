class SozeesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = " \
        sozees.sozee_name @@ :query \
        OR sozees.category @@ :query \
        OR users.username @@ :query \
        OR users.city @@ :query \
      "
      @sozees = Sozee.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @sozees = Sozee.where.not(latitude: nil, longitude: nil)
    end
    @markers = @sozees.map do |sozee|
      {
        lat: sozee.latitude,
        lng: sozee.longitude#,
        # infoWindow: { content: render_to_string(partial: "/sozees/map_box", locals: { sozee: sozee }) }
      }
    end
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
    params.require(:sozee).permit(:sozee_of, :sozee_name, :category, :description, :address, :category, :price_per_hour, :photo, :id)
  end
end
