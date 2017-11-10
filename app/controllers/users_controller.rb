class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def confirm
        @user = User.new(user_params)
    end    
    
    def create
 # #9
        @user = User.new(user_params)
 
 # #10
        if @user.save
            flash[:notice] = "Welcome to Bloccit #{@user.name}!"
            redirect_to root_path
        else
            flash.now[:alert] = "There was an error creating your account. Please try again."
            render :new
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
