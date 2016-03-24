# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Adaptation.destroy_all

book1 = Book.create(title: "Harry Potter and the Deathly Hallows", author: "J.K. Rowling", image_url: "hp7.jpg", date_of_publication: "2007", description: "The heart of Book 7 is a hero's mission--not just in Harry's quest for the Horcruxes, but in his journey from boy to man--and Harry faces more danger than that found in all six books combined, from the direct threat of the Death Eaters and you-know-who, to the subtle perils of losing faith in himself. Attentive readers would do well to remember Dumbledore's warning about making the choice between “what is right and what is easy,” and know that Rowling applies the same difficult principle to the conclusion of her series. While fans will find the answers to hotly speculated questions about Dumbledore, Snape, and you-know-who, it is a testament to Rowling's skill as a storyteller that even the most astute and careful reader will be taken by surprise.")

book2 = Book.create(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image_url: "gatsbybook.jpg", date_of_publication: "1925", description: "The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s.")

book3= Book.create(title: "The Little Mermaid", author: "Hans Christian Andersen", image_url: "tlmbook.jpg", date_of_publication: "1837", description: "This is a fairy tale about a young mermaid willing to give up her life in the sea and her identity as a mermaid to gain a human soul.")

book4 = Book.create(title: "A Game of Thrones", author: "George R. R. Martin", image_url: "gotbook.jpeg", date_of_publication: "1996", description: "Several noble houses fight a civil war over who should be king, while an exiled princess tries to find her place in the world, and the kingdom is threatened by some rising supernatural threat in the north.")

adaptation1 = book1.adaptations.create(title: "Harry Potter and the Deathly Hallows Part One", date_of_release: "2010", image_url: "hp7p1.jpg", comparison_to_book: "THIS...IS...AWESOME!!!!!")

adaptation2 = book1.adaptations.create(title: "Harry Potter and the Deathly Hallows Part Two", date_of_release: "2011", image_url: "hp7p2.jpg", comparison_to_book: "THIS...IS...AWESOME!!!!!")

adaptation3 = book2.adaptations.create(title: "The Great Gatsby", date_of_release: "1926", image_url: "gatsbyorig.jpg", comparison_to_book: "it was good")

adaptation4 = book2.adaptations.create(title: "The Great Gatsby", date_of_release: "2013", image_url: "gatsbyleo.jpeg", comparison_to_book: "it was good")

adaptation5 = book3.adaptations.create(title: "Hans Christian Andersen's The Little Mermaid", date_of_release: "1975", image_url: "tlm75.jpg", comparison_to_book: "it was good")

adaptation6 = book3.adaptations.create(title: "The Little Mermaid", date_of_release: "1989", image_url: "tlm89.jpg", comparison_to_book: "not good but not bad either")

adaptation7 = book4.adaptations.create(title: "Game of Thrones (season 1)", date_of_release: "2011", image_url: "gotned.jpg", comparison_to_book: "THIS...IS...AWESOME!!!!!")
