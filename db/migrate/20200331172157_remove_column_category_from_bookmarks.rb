class RemoveColumnCategoryFromBookmarks < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookmarks, :category, :string
  end
end
