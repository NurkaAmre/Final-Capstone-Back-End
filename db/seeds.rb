# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(user_name: 'Joseph')
User.create(user_name: 'Nurka')
User.create(user_name: 'Omar')
User.create(user_name: 'Tanusri')

Book.create(title: 'The Two Towers', author: 'J.R.R.Tolkein', book_cover_image: './app/img/book1-remove.png' , genre: 'novel', publisher: 'George Allen & Unwin', date_of_publication: '1954-11-11', pages: 352, language: 'english', isbn: '9780007203550', price: 230)
Book.create(title: 'The Picture of Dorian Gray', author: 'Oscar Wilde', book_cover_image: './app/img/book2-remove.png' , genre: 'novel', publisher: 'Ward, Lock and Co.', date_of_publication: '1891-03-03', pages: 288, language: 'english', isbn: '10. 1515190994', price: 230)
Book.create(title: 'Company of One', author: 'Paul Jarvis', book_cover_image: './app/img/book3-remove.png' , genre: 'novel', publisher: 'Mariner Books', date_of_publication: '2019-01-15', pages: 272, language: 'english', isbn: '9780241380222', price: 230)
Book.create(title: 'The Chronicles of Narnia', author: 'C.S.Lewis', book_cover_image: './app/img/book4-remove.png' , genre: 'novel', publisher: 'Harper Collins', date_of_publication: '1950-03-03', pages: 768, language: 'english', isbn: '0007421672', price: 230)



Reservation.create(user_id: 1, book_id: 1, city: 'Kenya', date_of_booking: '2023-03-03', date_of_delivery: '2023-03-15' )
Reservation.create(user_id: 2, book_id: 2, city: 'Almaty', date_of_booking: '2023-03-03', date_of_delivery: '2023-03-25')
Reservation.create(user_id: 3, book_id: 3, city: 'Karachi', date_of_booking: '2023-03-03', date_of_delivery: '2023-03-20')
Reservation.create(user_id: 4, book_id: 4, city: 'Kolkata', date_of_booking: '2023-03-03', date_of_delivery: '2023-03-20')