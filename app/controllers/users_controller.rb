class UsersController < ApplicationController
 def dahsboard
   @sozees = current_user.sozees
   # mes reservations en tant que sozee
   # mes reservations en tant que user

   authorize @user
 end
end
