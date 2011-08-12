require 'rubygems'
require "bundler/setup"

require 'sinatra'
require 'houdah'
require 'erb'
require 'yaml'

CONFIG = YAML.load_file("config.yml")

before do
  @client = Houdah::Client.new CONFIG['mapred_host'], CONFIG['mapred_port']
end

get '/' do
  erb :index
end
