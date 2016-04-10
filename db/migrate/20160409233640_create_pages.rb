class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :content_block, index: true, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
