class LoginsController < ApplicationController
  skip_before_action :logged_in, only: [:new, :create]
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      log_in_user(@user.id)
      redirect_to user_path(@user.id)
    else
      redirect_to login_path
    end
  end

  def destroy
    log_out_user
    redirect_to login_path
  end
end
