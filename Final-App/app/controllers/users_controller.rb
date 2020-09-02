class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		save = @user.save
		if save
			UserMailer.with(user: @user).welcome_email.deliver_later
			render 'show'
		else
			puts @user.email
			puts @user.errors.messages
			redirect_to root_path
		end
	end

	def show
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end
end
