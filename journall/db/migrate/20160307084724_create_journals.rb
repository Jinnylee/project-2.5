class CreateJournals < ActiveRecord::Migration
  belongs_to :user
  has_many :journal_tags
  has_many :tags, through :journal_tags

  def change
    create_table :journals do |t|
      t.integer "user_id"
      t.string "title"
      t.string "journal"
      t.integer "favorites"

      t.timestamps null: false
    end
  end
end
