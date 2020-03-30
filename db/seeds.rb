# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    Bookmark.create(category: "123", name: "Somesite.com", url: "Somesite Front Page.")
    Bookmark.create(category: "123", name: "Anothersite.com", url: "Anothersite Front page.")
    Bookmark.create(category: "Home", name: "andanothersite.com", url: "andanothersite Front page.")
    Bookmark.create(category: "", name: "site666.com", url: "site666 Front page.")    
    Bookmark.create(category: "Friend", name: "Dontknow.com", url: "Dontknow Front page.")