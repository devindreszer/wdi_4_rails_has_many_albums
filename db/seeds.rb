Album.delete_all
Song.delete_all

sea_change = Album.create!(name: "Sea Change", genre:'rock')
sea_change.songs.create!(title: 'Golden Age', artist: "Beck", price: 1.99, duration: 215)
sea_change.songs.create!(title: 'Lost Cause', artist: "Beck", price: 4.99, duration: 182)
sea_change.songs.create!(title: 'Lonesome Tears', artist: "Beck", price: 2.99, duration: 156)

nevermind = Album.create!(name: 'Nevermind', genre: 'rock')
nevermind.songs.create!(title: 'Lithium', artist: "Nirvana", price: 1.99, duration: 215)
nevermind.songs.create!(title: 'Come as you are', artist: "Nirvana", price: 4.99, duration: 182)

Author.delete_all
Book.delete_all

stephen_king = Author.create!(name: "Stephen King")
stephen_king.books.create!(title: 'It', price: 10.99, published_on: '1986-09-01')
stephen_king.books.create!(title: '11/22/63', price: 12.99, published_on: '2011-11-08')

jk_rowling = Author.create!(name: "JK Rowling")
jk_rowling.books.create!(title: 'Harry Potter and the Sorcerers Stone', price: 15.00, published_on: '1997-06-26')
jk_rowling.books.create!(title: 'Harry Potter and the Chamber of Secrets', price: 15.00, published_on: '1998-07-02')
