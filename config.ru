require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './app/controllers/app_controller.rb'

run AppController
