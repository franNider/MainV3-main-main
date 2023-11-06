class Authentication::UsersController < ApplicationController
    skip_before_action :protect_pages
    
    def new
        @user= User.new
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            redirect_to new_dog_path 
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:email, :dni, :nombre, :apellido, :rol, :password)
    end
end