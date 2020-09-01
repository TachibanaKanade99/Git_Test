class UserController < ApplicationController
	def index
	end

	def create
		@user = User.create(user_params)
		save = @user.save
		if save
			UserMailer.with(user: @user).welcome_email.deliver_now
			redirect_to home_index_path
		else
			puts @user.errors.messages
			redirect_to user_index_path
		end
	end

	private
		def user_params
			params.permit(:first_name, :last_name, :email, :password)
		end
end
