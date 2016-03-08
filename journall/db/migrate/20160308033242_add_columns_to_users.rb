class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :entries, :integer
    add_column :users, :likes, :integer

  end
end
