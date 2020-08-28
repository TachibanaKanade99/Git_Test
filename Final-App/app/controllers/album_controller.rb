class AlbumController < ApplicationController
	def edit
		@album = Album.find(params[:id])
	end
	
	def update
		@new_title = params[:album][:title]
		@album = Album.find(params[:id])
		@album.title = @new_title
		@album.update!(album_params)
	end

	private 
		def album_params
			params.require(:album).permit(:title)
		end
		
	
	
	
end
