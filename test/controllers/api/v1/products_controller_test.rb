require "test_helper"

class Api::V1::ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get api_v1_products_url
    assert_response :success
  end
end
