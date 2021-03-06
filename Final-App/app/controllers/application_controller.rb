class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
	end

	def after_sign_in_path_for(resource_or_scope)
		# your_path
		user_path(current_user.id)
	end

	def after_sign_out_path_for(resource_or_scope)
		# your_path
		new_user_session_path
	end
end
