require 'test_helper'

class RhMenuControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
