class Users::SessionsController < Devise::SessionsController
  include ApplicationHelper

  def create
    super
  end

  def new
    super
  end
  
  protected
	def after_sign_in_path_for(resource)
		profile_path
	end

end
