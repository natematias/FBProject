require 'test_helper'

class AuthenticateControllerTest < ActionController::TestCase
  test "basic authentication case" do
    get :index
  end
end
