require 'sinatra'
require 'battery_staple'

set :views, File.dirname(__FILE__) + "/views"

get "/" do
  password = params[:words] ? BatteryStaple.generate(params[:words].to_i) : ""
  erb :'home.html', :locals => {:password => password, :num_words => params[:words].to_i}
end
