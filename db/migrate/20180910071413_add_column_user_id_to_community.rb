class AddColumnUserIdToCommunity < ActiveRecord::Migration[5.1]
  def change
    add_column :communities, :user_id, :integer
  end
end
