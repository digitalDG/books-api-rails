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


# books-api-rails
