class HomeController < ApplicationController
  def index
  end
  def show
    # @albums = Album.order(created_at: :desc).limit(4)
    @albums = Album.all 
  end
  
end
