class CreateFavorites < ActiveRecord::Migration
  has_many :user_favorites
  has_many :users, through :user_favorites

  def change
    create_table :favorites do |t|
      t.integer "journal_id"

      t.timestamps null: false
    end
  end
end
