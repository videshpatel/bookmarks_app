class ChangeNameToDescriptionToBookmarks < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookmarks, :name, :description
  end
end
