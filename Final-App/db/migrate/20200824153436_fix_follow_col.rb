class FixFollowCol < ActiveRecord::Migration[6.0]
  def up 
    rename_column :follows, :follower_id, :user_id
  end

  def down 
    rename_column :follows, :user_id, :follower_id
  end
end
