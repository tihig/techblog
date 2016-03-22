class ChangeCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :descritpion, :description
  end
end
