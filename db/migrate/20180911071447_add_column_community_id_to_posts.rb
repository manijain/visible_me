class AddColumnCommunityIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :community_id, :integer
  end
end
