require 'data_mapper'

DataMapper::setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/database.db")
require_relative 'models/user.rb'
DataMapper.finalize
DataMapper.auto_upgrade!
