json.array! @bookmarks.each do |bookmark|
  json.partial! "bookmark.json.jbuilder", bookmark: bookmark
end
