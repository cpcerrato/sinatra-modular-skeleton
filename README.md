Description
================

This is a skeleton to easily develop sinatra applications using a modular style.

The project implements a MVC scaffold under the `app` folder. I'll describe the most relevant parts:

* The main application file `application_controller.rb` it's a base controller class that must be inherited by each controller.
* `lib` folder is used to store custom libraries
* `public` folder is used, in e.g., to host static files like css, fonts, javascripts or images. 
* The `config.ru` [rack](http://rack.github.io/) file imports gems and files, runs the application and maps routes to specific resources.
* `features` folder is used for implementing BDD with [cucumber](https://github.com/cucumber/cucumber)
* `template_controller.txt` file implements RESTfull routes to implement CRUD actions by each controller. You can copy & paste renamed as whatever_controller.rb and change the class to WhateverController.

This is the complete scaffold:

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

Empty folders contain a `.gitkeep` file is just a placeholder. It's a convention, git assigns no special significance to this name.
When you create your first file inside an empty folder you should delete `.gitkeep` file because it won't necessary anymore. 
If you don't plan to use database, cucumber or some other folder you can delete it.

In order to configure your ruby environment (in my case I use rvm) you must create `.ruby-version` and `.ruby-gemset` at project's root to isolate the environment.
