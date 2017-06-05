require "test_helper"

describe WelcomeController do
  it "should get show" do
    get welcome_show_url
    value(response).must_be :success?
  end

end
