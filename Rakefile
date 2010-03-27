begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = "sinatra-mongomapper"
    gem.summary     = "A MongoMapper extension for Sinatra."
    gem.description = "You got your Ruby Mongo ODM mixed with my web framework!!!"
    gem.email       = "jcbledsoe@gmail.com"
    gem.homepage    = "http://github.com/slylencer/sinatra-mongomapper"
    gem.authors     = ["John Bledsoe"]

    gem.add_dependency("sinatra")
    gem.add_dependency("mongomapper")
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end