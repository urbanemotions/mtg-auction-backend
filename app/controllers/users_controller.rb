class UsersController < ApplicationController

    #signup
    def create
        user = User.find_or_create_by(name: params[:name], username: params[:username])
        if user
            render json: user
        else
            render json: {error: 'User Was Not Created'}
        end
    end

    #login
    def show
        user = User.find(params[:id], name: params[:name], username: params[:username])
        render json: user
    end

end
