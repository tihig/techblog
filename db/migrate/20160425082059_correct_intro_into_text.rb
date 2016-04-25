class CorrectIntroIntoText < ActiveRecord::Migration
  def change
    change_column :posts, :intro, :text
  end
end
