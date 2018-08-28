require 'test_helper'

class SoglasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sogla = soglas(:one)
  end

  test "should get index" do
    get soglas_url
    assert_response :success
  end

  test "should get new" do
    get new_sogla_url
    assert_response :success
  end

  test "should create sogla" do
    assert_difference('Sogla.count') do
      post soglas_url, params: { sogla: { university: @sogla.university } }
    end

    assert_redirected_to sogla_url(Sogla.last)
  end

  test "should show sogla" do
    get sogla_url(@sogla)
    assert_response :success
  end

  test "should get edit" do
    get edit_sogla_url(@sogla)
    assert_response :success
  end

  test "should update sogla" do
    patch sogla_url(@sogla), params: { sogla: { university: @sogla.university } }
    assert_redirected_to sogla_url(@sogla)
  end

  test "should destroy sogla" do
    assert_difference('Sogla.count', -1) do
      delete sogla_url(@sogla)
    end

    assert_redirected_to soglas_url
  end
end
