class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper
  
  before_filter :configure_permitted_parameters

  def create
    super
  end

  def new
    super
  end

  def edit
    super
  end

  protected
    def after_sign_up_path_for(resource)
      profile_path
    end


  private 
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name) }
   end

end
