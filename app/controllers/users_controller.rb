class UsersController < ApplicationController
 def dahsboard
   @sozee = current_user.sozees.first
   # mes reservations en tant que sozee
   # mes reservations en tant que user

   # authorize @user
 end

  def index
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end
