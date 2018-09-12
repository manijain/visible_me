class CreateFriendRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_requests do |t|
      # t.references :user, foreign_key: true
      # t.references :friend, foreign_key: true
      t.integer :user_id
      t.integer :friend_id
      t.timestamps
    end
  end
end
