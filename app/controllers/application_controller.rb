class ApplicationController < ActionController::Base
    before_action :logged_in

    def log_in_user(user_id)
        session[:user_id] = user_id
    end

    def log_out_user
        session[:user_id] = nil
    end

    def logged_in
        # byebug
        @logged_in = session[:user_id]
        # byebug
        if @logged_in != nil
            # byebug
            @logged_in_user_id = session[:user_id]
            @logged_in_user = User.find(@logged_in_user_id)
        end
    end
end
