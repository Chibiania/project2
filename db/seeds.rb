# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Adaptation.destroy_all

book1 = Book.create(title: "narnia", author: "hammerstien", image_url: "mwah", date_of_publication: "your mum", description: "it's ok")

adaptation1 = book1.adaptations.create(title: "Narina", date_of_release: "86", image_url: "ugh!", comparison_to_book: "it's aight")

adaptation2 = book1.adaptations.create(title: "the prince", date_of_release: "42", image_url: "morg!", comparison_to_book: "it's cool")

book2 = Book.create(title: "twilight", author: "people_pooper", image_url: "uhhog", date_of_publication: "steeples", description: "niiiiioce!")

adaptation3 = book2.adaptations.create(title: "breaking farts", date_of_release: "91", image_url: "not again", comparison_to_book: "nope")
