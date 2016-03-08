class CreateTags < ActiveRecord::Migration
  has_many :journal_tags
  has_many :journals, through :journal_tags

  def change
    create_table :tags do |t|
      t.string "tag"

      t.timestamps null: false
    end
  end
end
