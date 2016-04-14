class CreateContentBlocks < ActiveRecord::Migration
  def change
    create_table :content_blocks do |t|
      t.text :content
      t.boolean :editable, :default => false
      t.references :page, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
