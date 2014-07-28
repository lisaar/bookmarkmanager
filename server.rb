require 'sinatra'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"
#we're telling datamapper to use a postgres database on localhost. THe name will be "bookmark_manger_test" or "bookmark_manager_development"
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
 require './lib/link' #this needs to be done after datamapper is initalised

#After declaring your models, finalise them
DataMapper.finalize

#Database tables don't exist yet so lets creat them
DataMapper.auto_upgrade!

get '/' do
	erb :index
end