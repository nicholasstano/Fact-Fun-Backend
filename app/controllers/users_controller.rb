class UsersController < ApplicationController
    def index 
        users = User.all.order(total_points: :desc)
        render :json => users
    end

    def create 
        user = User.create(name: params[:name], total_points: params[:total_points])
        render :json => user
    end 

    def update 
        user = User.find(params[:id])
        user.update(total_points: params[:total_points])
        render :json => user
    end 
end
