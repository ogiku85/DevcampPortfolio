require "test_helper"

class TestersControllerTest < ActionDispatch::IntegrationTest
  test "should get Test1" do
    get testers_Test1_url
    assert_response :success
  end

  test "should get Test" do
    get testers_Test_url
    assert_response :success
  end

  test "should get 2" do
    get testers_2_url
    assert_response :success
  end
end
