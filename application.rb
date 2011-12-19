require 'sinatra'

Dir.glob(File.join(File.dirname(__FILE__), 'app/*.rb')).each {|f| require f }
set :views, File.dirname(__FILE__) + "/views"
