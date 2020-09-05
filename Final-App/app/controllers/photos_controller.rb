class PhotosController < ApplicationController
	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.create(user_params)
		# byebug
	end

	private
		def user_params
			params.require(:photo).permit(:title, :description, :sharing_mode, :user_id, :image)
		end
end
