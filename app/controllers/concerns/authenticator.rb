module Authenticator
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless_signedin
  end

  def redirect_unless_signedin
    flash[:alert] = 'You need to be signed in to see this page'
    redirect_to login_index_path unless user_signed_in?
  end
end
