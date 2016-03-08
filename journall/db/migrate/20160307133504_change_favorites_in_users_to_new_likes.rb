class ChangeFavoritesInUsersToNewLikes < ActiveRecord::Migration
  def change
    rename_column :users, :favorites, :likes
  end
end
