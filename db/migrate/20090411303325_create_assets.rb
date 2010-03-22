 
class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :title
      t.boolean :visible
      t.integer :hostable_id
      t.string :hostable_type
      # attachment_fu fields
      t.integer :parent_id
      t.string  :content_type
      t.string  :filename
      t.string  :thumbnail
      t.integer :size
      t.integer :height
      t.integer :width
      t.timestamps
    end
    add_index :assets, :parent_id
    add_index :assets, [:hostable_id, :hostable_type]
  end
  def self.down
    drop_table :assets
  end
end
