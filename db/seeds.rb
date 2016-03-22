# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Adaptation.destroy_all

book1 = Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", image_url: "mwah", date_of_publication: "your mum", description: "awesomesauce")

book2 = Book.create(title: "Harry Potter and the Chamber of Secrets", author: "J.K. Rowling", image_url: "uhhog", date_of_publication: "steeples", description: "niiiiioce!")

book3= Book.create(title: "Harry Potter and the Prisoner of Azkaban", author: "J.K. Rowling", image_url: "mwah", date_of_publication: "your mum", description: "awesomesauce")

book4 = Book.create(title: "Harry Potter and the Goblet of Fire", author: "J.K. Rowling", image_url: "uhhog", date_of_publication: "steeples", description: "niiiiioce!")

book5= Book.create(title: "Harry Potter and the Order of the Phoenix", author: "J.K. Rowling", image_url: "mwah", date_of_publication: "your mum", description: "awesomesauce")

book6 = Book.create(title: "Harry Potter and the Halfblood Prince", author: "J.K. Rowling", image_url: "uhhog", date_of_publication: "steeples", description: "niiiiioce!")

book7= Book.create(title: "Harry Potter and the Deathly Hallows", author: "J.K. Rowling", image_url: "mwah", date_of_publication: "your mum", description: "awesomesauce")

adaptation1 = book1.adaptations.create(title: "Harry Potter and the Sorcerer's Stone", date_of_release: "1999?", image_url: "ugh!", comparison_to_book: "they're soo cute!")

adaptation2 = book2.adaptations.create(title: "Harry Potter and the Chamber of Secrets", date_of_release: "2001?", image_url: "morg!", comparison_to_book: "it's kinda dark")

adaptation3 = book3.adaptations.create(title: "Harry Potter and the Prisoner of Azkaban", date_of_release: "2002?", image_url: "yup", comparison_to_book: "buckbeak!")

adaptation4 = book4.adaptations.create(title: "Harry Potter and the Goblet of Fire", date_of_release: "2004", image_url: "yup", comparison_to_book: "ferret boy")

adaptation5 = book5.adaptations.create(title: "Harry Potter and the Order of the Phoenix", date_of_release: "2006", image_url: "morg!", comparison_to_book: "it's kinda dark")

adaptation6 = book6.adaptations.create(title: "Harry Potter and the Halfblood Prince", date_of_release: "2008", image_url: "morg!", comparison_to_book: "it's pretty light considering")

adaptation7 = book7.adaptations.create(title: "Harry Potter and the Deathly Hallows Part One", date_of_release: "2010", image_url: "morg!", comparison_to_book: "it's dark")

adaptation8 = book7.adaptations.create(title: "Harry Potter and the Deathly Hallows Part Two", date_of_release: "2011", image_url: "morg!", comparison_to_book: "it's darker still")
