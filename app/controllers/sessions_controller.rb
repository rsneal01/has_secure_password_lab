class SessionsController < ApplicationController
    def create
        # binding.pry
        @user = User.find_by(name: params[:user][:name])
        if params[:user][:password] == nil
        elsif params[:user][:password] == @user.password
            session[:user_id] = @user.id
        end
    end
end