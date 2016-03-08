class CreateJournalTags < ActiveRecord::Migration
  belongs_to :journals
  belongs_to :tags

  def change
    create_table :journal_tags do |t|
      t.integer "journal_id"
      t.integer "tag_id"


      t.timestamps null: false
    end
  end
end
