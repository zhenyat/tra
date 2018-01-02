require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  test "should get add_trades" do
    get trades_add_trades_url
    assert_response :success
  end

  test "should get index" do
    get trades_index_url
    assert_response :success
  end

end
