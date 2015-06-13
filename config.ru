#\ -s puma
require 'rubygems'
require 'bundler'

Bundler.require

# Files must be required in correct order
Dir.glob('./app/helpers/*.rb').sort.each { |file| require file }
Dir.glob('./app/controllers/*.rb').sort.each { |file| require file }
Dir.glob('./app/models/*.rb').sort.each { |file| require file }

# Routes and controllers
map("/")        { run ApplicationController }
