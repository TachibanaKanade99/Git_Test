class ApplicationController < ActionController::Base

	helper_method :currentUser
	helper_method :logged

	# Check for current user:
	def currentUser
		User.find_by(id: @user.id)
	end

	# Check if user loged in or not
	def logged
		!currentUser.nil?
	end
end
