$: << File.join(File.dirname(__FILE__), "..")
$: << File.join(File.dirname(__FILE__), "..", "app")
require 'sinatra'
require 'rack/test'

set :environment, :test
set :views, File.dirname(__FILE__) + "/../views"

def app
  Sinatra::Application
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

