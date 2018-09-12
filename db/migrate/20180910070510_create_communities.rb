class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.boolean :is_active
      t.string :logo_url
      t.integer :community_type

      t.timestamps
    end
  end
end
