class CreateTextBlocks < ActiveRecord::Migration
  def change
    create_table :text_blocks do |t|
      t.string :name
      t.text :body
      t.string :position

      t.timestamps
    end
  end
end
