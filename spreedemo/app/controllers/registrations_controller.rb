class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
   session[:spree_user_signup] = true
    '/'
  end
end