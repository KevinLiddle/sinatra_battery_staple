require "spec_helper"
require "application"

describe "directory" do

  it "renders the home page" do
    get "/"
    last_response.should be_ok
    last_response.body.should include("Get a password")
  end

  it "generates a random password" do
    BatteryStaple.should_receive(:generate).with(4)
    get "/", params = {:words => 4}
  end
end
