class UsersController < ApplicationController

    def show
        user = User.find(session[:user_id])
        render json: user, status: 200
    end
end
