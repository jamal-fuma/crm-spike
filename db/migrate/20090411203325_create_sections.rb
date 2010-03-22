class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.references :page
      t.string :title
      t.text :content
      t.boolean :visible
      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
