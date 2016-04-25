class AddIntroToPost < ActiveRecord::Migration
  def change
    add_column :posts, :intro, :string
  end
end
