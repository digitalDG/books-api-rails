# README

This a sample project to demonstrate the creation of a CRUD REST API for books in Rails

It uses has the following features

* Uses Faker gem in order to generate sample database data

Design Work

* Created Book model which consists of title, author, publisher, and genre
* Defined routes for all CRUD operations 
* Created books controller corresponding to CRUD operations



Testing

* used sqlite browser to verify database tables
* used Postman to test CRUD API requests

GET /books
GET /books/:id

POST /books { title, author, publisher, genre }

DELETE /book/:id

PUT /book/:id

See design_notes.txt for a discussion of the steps I too during development of the project.

See FilesCommitted to see what files were actually added or modified during development. Created this file because my commit history does not show which files where modified because I did 1 commit to add the project to GitHub. 

# books-api-rails
