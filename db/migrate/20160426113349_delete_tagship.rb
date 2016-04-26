class DeleteTagship < ActiveRecord::Migration
  def change
    drop_table :tagships
  end
end
