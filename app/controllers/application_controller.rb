class ApplicationController < ActionController::API
  before_action :current_user

  def current_user
    User.first
  end
end
