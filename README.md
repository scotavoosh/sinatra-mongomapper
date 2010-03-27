# Sinatra MongoMapper

A MongoMapper extension for Sinatra.

## Installation

Install it with gem:

    $ gem install sinatra-mongomapper
    
## Usage

    require 'sinatra'
    require 'sinatra/mongomapper'
    
    # Specify the database to use. *Required*
    set :mongomapper, 'mongomapper://localhost:27017/example'
    
    # Specify a logger to be used by the MongoDB driver
    # Value can be any that the Logger accepts for initialization
    # The following is the default setting
    set :mongo_logfile, File.join("log", "mongo-driver-#{environment}.log")
    
    # Assuming a MongoMapper document of Post
    get '/' do
      Post.all
      haml :index
    end

You can add a username and password for authentication:

    set :mongomapper, 'mongomapper://username:password@localhost:27017/example'

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Resources

* [Mongo Ruby Tutorial](http://www.mongodb.org/display/DOCS/Ruby+Tutorial)
* [MongoMapper](http://github.com/jnunemaker/mongomapper)
* [Sinatra](http://sinatrarb.com)

## Copyright

Copyright (c) 2009 John Bledsoe. See LICENSE for details.