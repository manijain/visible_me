class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.boolean :is_active
      t.integer :user_id
      t.integer :post_type

      t.timestamps
    end
  end
end
