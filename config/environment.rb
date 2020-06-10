require 'bundler/setup'
Bundler.require

# require_relative '../app/movie'
require_all 'app'

ActiveRecord::Base.establish_connection({
    adapter: 'sqlite3',
    database: 'db/development.sqlite3'
})
