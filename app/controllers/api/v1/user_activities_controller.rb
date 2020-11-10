class Api::V1::UserActivitiesController < ApplicationController
    
    def show
        userActivity = UserActivity.find(params[:id])
        render json: userActivity
    end

    def index
        userActivities = UserActivity.all
        render json: userActivities
    end

    def new
        userActivity = UserActivity.new
        
    end
    
    def create
        userActivity = UserActivity.create(userActivity_params)
        if userActivity.valid?
        #   flash[:success] = "UserActivity successfully created"
          render json: userActivity
        #   redirect_to userActivity
        # else
        #   flash[:error] = "Something went wrong"
        #   
        #   render 'new'
        end
    end

    def destroy
        userActivity = UserActivity.find(params[:id])
        if userActivity.destroy
            render json: userActivity
        #     flash[:success] = 'Object was successfully deleted.'
        #     redirect_to objects_url
        # else
        #     flash[:error] = 'Something went wrong'
        #     redirect_to objects_url
        end
    end
    
    private

    def userActivity_params
        params.require(:user_activities).permit(:user_id, :activity_id)
    end
end


