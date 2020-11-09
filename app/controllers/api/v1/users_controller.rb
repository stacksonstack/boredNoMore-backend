class Api::V1::UsersController < ApplicationController

    def show
        users = User.find(params[:id])
        render json: users
    end

    def index
        user = User.all
        render json: user
    end
    
    
end
