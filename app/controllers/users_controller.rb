class UsersController < ApplicationController
    def index 
        users = User.all
        render :json => users
    end

    def create 
        user = User.create(name: params[:name], total_points: params[:total_points])
        render :json => user
    end 
end
