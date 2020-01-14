class SessionsController < ApplicationController
    skip_before_action :require_log_in, only: [:new, :create]
    include SessionsHelper

    def new
        @user = User.new
    end

    def create
        sign_in_logic
    end

    def destroy
        session.delete :user_id
        render :new
    end

    private

end
