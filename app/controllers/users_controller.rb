# class UsersController < ApplicationController

#   def create
#     @user = User.new(user_params)
#     @user.user = current_user
#     authorize @user
#     if @user.save
#       redirect_to sozee_path, notice: 'Your account was successfully created.'
#     else
#       render :new
#     end
#   end

#   private

#   def user_params
#     params.require(:user).permit(:username, :city, :email, :password)
#   end
# end
