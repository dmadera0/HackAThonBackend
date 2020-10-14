class UsersController < ApplicationController
   def create 
    @user = User.create({
        name: params[:name], 
        age: params[:age]
        })
    render json: @user
   end
   
   def index
    @users = Users.all
    render json: @users
   end
end
