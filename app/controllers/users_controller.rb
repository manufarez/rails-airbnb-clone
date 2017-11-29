class UsersController < ApplicationController
 def dahsboard
   @sozee = current_user.sozees.first
   # mes reservations en tant que sozee
   # mes reservations en tant que user

   # authorize @user
 end
end