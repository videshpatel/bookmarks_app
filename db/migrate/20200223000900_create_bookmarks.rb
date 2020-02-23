class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :category
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
