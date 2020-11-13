class Api::V1::UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    def new 
        user = User.new
    end 
      
    def create 
        user = User.create(user_params)
        if user.valid? 
          session[:user_id] = user.id    
          render json: user      
        else
          flash[:errors] = user.errors.full_messages
        end 
    end

    private

    def user_params 
        params.require(:users).permit(:password, :username, :email)
    end
end
