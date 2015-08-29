class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def after_sign_in_path_for(resource)
		if user_signed_in?
			user_path(current_user)
		elsif admin_signed_in?
			admin_path(current_admin)
		end
	end
  

  before_filter :configure_permitted_admin_parameters, if: :devise_controller?

    protected

        def configure_permitted_admin_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :first_name, :last_name, :job_title, :phone_number, :company) }
       end

end
