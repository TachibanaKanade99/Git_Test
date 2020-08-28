class HomeController < ApplicationController
  def index
  end
  def show
    @albums = Album.select(:title).order(created_at: :desc).limit(4)
    
  end
  
end
