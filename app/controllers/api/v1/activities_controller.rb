class Api::V1::ActivitiesController < ApplicationController

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def index
        activities = Activity.all
        render json: activities
    end

    
    
end
