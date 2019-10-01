class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.create(params.require(:user).permit(:name, :password))
    
    log_in_user(@user.id)
    redirect_to login_path
    
  end

  def destroy
  end

  def update
  end
end
