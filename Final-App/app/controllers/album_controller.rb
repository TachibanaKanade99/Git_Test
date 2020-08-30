class AlbumController < ApplicationController
	def edit
		@album = Album.find(params[:id])
	end
	
	def update
		@new_title = params[:album][:title]
		@album = Album.find(params[:id])
		@album.title = @new_title
		
		updated = @album.update!(album_params)
		if updated
			# flash[:notice] = "Update Successfully"
			puts updated
			redirect_to edit_album_path, notice: "Update Successfully"
		else 
			puts updated
			# flash[:alert] = "Title is two short"
			redirect_to edit_album_path, alert: "Title is too short"
		end
		
	end

	private 
		def album_params
			params.require(:album).permit(:title)
		end
end
