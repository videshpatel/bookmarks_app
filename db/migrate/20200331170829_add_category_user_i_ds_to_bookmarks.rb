class AddCategoryUserIDsToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_column :bookmarks, :category_id, :integer
    add_column :bookmarks, :user_id, :integer
  end
end
