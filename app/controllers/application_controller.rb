class ApplicationController < ActionController::Base
  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Action non permise."
    redirect_to root_url
  end

  def current_ability
    current_user.ability
  end
end
