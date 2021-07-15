class UsersController < ApplicationController
    def new
    end

    def create
        # binding.pry
        @user = User.create(user_params)
        if @user.password != @user.password_confirmation
            redirect_to '/user/new'
        else
            session[:user_id] = User.last.id
        end
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end