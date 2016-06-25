class AddAccountIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account_id, :string
    add_column :users, :name, :string
    add_column :users, :icon, :text
    add_column :users, :introduction, :text
  end
end
