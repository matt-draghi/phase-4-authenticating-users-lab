class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] ||= user.id
        render json: user, status: 200
    end


    def destroy
        session.delete :user_id
        render json: {}, status: 204
    end

end
