class LoginController < ApplicationController
  def index
    return redirect_to new_user_session_path unless user_signed_in?
    redirect_to root_path
  end
end
