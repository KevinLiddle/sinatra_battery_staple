require 'battery-staple'

module Directory

  get "/" do
    haml :home, :locals => {:password => ""}
  end

  post "/generate" do
    password = RandomPassword.generate(params[:words].to_i)
    haml :home, :locals => {:password => password}
  end

end
