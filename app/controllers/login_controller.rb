class LoginController < ApplicationController
  def index
    redirect_to root_path if user_signed_in?
    redirect_to new_user_session_path if !user_signed_in?
  end
end
