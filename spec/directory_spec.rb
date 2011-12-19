require "spec_helper"
require "directory"

describe "directory" do

  it "renders the home page" do
    get "/"
    last_response.should be_ok
    last_response.body.should include("Create a new password")
  end

  it "generates a random password" do
    RandomPassword.should_receive(:generate).with(4)
    post "/generate", params = {:words => 4}
  end
end
