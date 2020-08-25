#################Feeds####################

# Get posts in reverse chronological order (from newest to oldest)
# Get posts of only following users

# Suppose i am user with id = 2
user = User.find(2)

# Get following user
following_users = user.followings

# Get photos/albums from following user
following_photos = []
following_albums = []

following_users.each do |user| following_photos += Photo.joins(:user).where("photos.user_id = ?", user.id) end

following_users.each do |user| following_albums += Album.joins(:user).where("albums.user_id = ?", user.id) end


# Get Author information (name and avatar)

following_users.each do |user| puts user.first_name + " " + user.last_name end

# Get photo/album title - description - publication date

following_photos.each do |photo| puts photo.title + " " + photo.description + " " + photo.created_at end

following_albums.each do |album| puts album.title + " " + album.description + " " + album.created_at end

# Get reaction from posts (photo and album)

# Photo

# Album
album = Album.find(3)

# Get user like the album
album.likes

#############Discover#################
# Get posts in reverse chronological order (from newest to oldest)
# Get post without following

# Get Photo posts
photo_arr = Photo.where(sharing_mode: 'public').order(created_at: :desc)

# Get Album posts
album_arr = Album.where(sharing_mode: 'public').order(created_at: :desc)