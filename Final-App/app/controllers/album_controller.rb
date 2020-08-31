class AlbumController < ApplicationController
	def edit
		@album = Album.find(params[:id])
	end

	def show
	end	
	
	def update
		@new_title = params[:album][:title]
		@album = Album.find(params[:id])
		@album.title = @new_title
		
		if @album.save
			flash[:success] = "Update Successfully"
			# @album.update!(album_params)
			redirect_to newest_path
		else 
			flash[:error] = "Title is too short"
			redirect_to edit_album_path
		end
		
	end

	private 
		def album_params
			params.require(:album).permit(:title)
		end
end
