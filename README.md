Description
================

This is a skeleton to easily develop sinatra applications using modular style.

The project implement MVC scaffold under app folder, the main application file 'application_controller.rb' that must be inherited by each controller. Features folder used to BDD witch cucucmber, lib to store custom libraries, public to store css, fonts and javascripts (and images). The file config.ru import files, run the application and map routes to specific resources.

```bash
|-- app
|   |-- controllers
|   |   |-- application_controller.rb
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
```

Empty folder contains .gitkeep file (is a convention, git assigns no special significance to this name) to keep them at git repository. When you create your first file inside a empty folder you should delete .gitkeep file because there isn't necesary anymore. If you don't want to use database, cucumber or some other folder you should delete it.

The file template_controller.txt implements RESTfull routes to implement CRUD actions by each controller. Yo can copy & paste renamed as whatever_controller.rb and change the class to WhateverController.

In order to configure environment (in my case rvm) you must create .ruby-version and .ruby-gemset at root to isolate the environment.
