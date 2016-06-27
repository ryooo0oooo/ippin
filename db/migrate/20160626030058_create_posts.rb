class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :image
      t.text :description
      t.integer :shop_id
      t.integer :user_id
      t.timestamps
    end
  end
end
