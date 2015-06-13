Description
================

This is a skeleton to easily develop sinatra applications using modular style. I use rvm to manage ruby versions, if you use rbenv instead simply change .ruby-version and .ruby-gemset by the rbenv environment configuration files.

The project implement MVC scaffold the main application file that must be inherited by each controller.

´´´
|-- app
|   |-- controllers
|   |   |-- application_controller.rb
|   |   |-- static_pages_controller.rb
|   |   `-- template_controller.txt
|   |-- helpers
|   |-- models
|   `-- views
|-- config.ru
|-- db
|-- features
|   |-- step_definitions
|   `-- support
|-- Gemfile
|-- lib
|-- public
|   |-- css
|   |-- fonts
|   `-- js
|-- README.md
`-- tmp

´´´

The file template_controller.txt implements RESTfull routes to implement CRUD actions by each controller. Yo can copy & paste renamed as whatever_controller.rb and change the class to WhateverController.


