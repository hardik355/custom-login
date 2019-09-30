require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registers_index_url
    assert_response :success
  end

  test "should get new" do
    get registers_new_url
    assert_response :success
  end

  test "should get edit" do
    get registers_edit_url
    assert_response :success
  end

  test "should get show" do
    get registers_show_url
    assert_response :success
  end

end
