class CreateTagships < ActiveRecord::Migration
  def change
    create_table :tagships do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
