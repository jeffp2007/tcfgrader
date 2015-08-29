class AdminregistrationsController  < Admin::RegistrationsController

	protected

	def after_sign_up_path_for(resource)
    	new_admin_session_path
  	end

end
