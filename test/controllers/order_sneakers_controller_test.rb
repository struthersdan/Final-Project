require 'test_helper'

class OrderSneakersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_sneakers_create_url
    assert_response :success
  end

  test "should get update" do
    get order_sneakers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_sneakers_destroy_url
    assert_response :success
  end

end
