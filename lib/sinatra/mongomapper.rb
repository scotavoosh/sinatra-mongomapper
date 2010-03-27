require 'logger'
require 'mongo_mapper'
require 'uri'

module Sinatra
  module MongoMapper
    def self.registered(app)
      app.set :mongo_logfile, File.join("log", "mongo-driver-#{app.environment}.log")
    end
    
    def mongomapper=(mongo_url)
      url = URI(mongo_url)
      logfile = ::Logger.new(mongo_logfile) if mongo_logfile
      ::MongoMapper.connection = Mongo::Connection.new(url.host, url.port, :logfile => logfile)
      ::MongoMapper.database = url.path.gsub(/^\//, '')
      ::MongoMapper.database.authenticate(url.user, url.password) if url.user && url.password
    end
  end

  register Sinatra::MongoMapper
end
