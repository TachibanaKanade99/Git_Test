class ApplicationController < ActionController::Base

	helper_method :currentUser
	helper_method :logged

	# Check for current user:
	def currentUser(user)
		User.find_by(user.id)
	end

	# Check if user loged in or not
	def logged
		!currentUser.nil?
	end
end
