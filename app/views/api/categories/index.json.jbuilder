json.array! @categorys.each do |category|
  json.partial! "category.json.jbuilder", category: category
end
