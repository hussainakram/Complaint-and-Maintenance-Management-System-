require 'test_helper'

class SdosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sdos_index_url
    assert_response :success
  end

  test "should get edit" do
    get sdos_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get sdos_destroy_url
    assert_response :success
  end

  test "should get create" do
    get sdos_create_url
    assert_response :success
  end

  test "should get update" do
    get sdos_update_url
    assert_response :success
  end

  test "should get show" do
    get sdos_show_url
    assert_response :success
  end

end
