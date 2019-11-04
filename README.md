# AWS Image Upload API

Simple API that fullfills the following stories:

* As a user, I can register

* As a user, I can log in

* As a user I can upload an image

* As a user I can list my uploaded images with tumbnails

## Getting started

* Install the required ruby `2.6.4` if you don't have it (manually or using rvm for example)

* Run `bundle install` to install all the necessary gems

* Update the `database.yml` file in the `config` directory with your development database configuration

* Create the database with `rails db:create`, followed by `rails db:migrate`

* Request the development `master.key` file and copy it to the `config` directory

* Start the server with `rails s`

* Try `http://localhost:3000/api` in a browser (a white screen will mean success)


## View examples and test the API endpoints

You can view examples of requests and test them by importing the `api-spec.har` file to a REST client (Insomnia for example)
