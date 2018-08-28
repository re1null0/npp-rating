require 'test_helper'

class PsostavsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psostav = psostavs(:one)
  end

  test "should get index" do
    get psostavs_url
    assert_response :success
  end

  test "should get new" do
    get new_psostav_url
    assert_response :success
  end

  test "should create psostav" do
    assert_difference('Psostav.count') do
      post psostavs_url, params: { psostav: { university: @psostav.university } }
    end

    assert_redirected_to psostav_url(Psostav.last)
  end

  test "should show psostav" do
    get psostav_url(@psostav)
    assert_response :success
  end

  test "should get edit" do
    get edit_psostav_url(@psostav)
    assert_response :success
  end

  test "should update psostav" do
    patch psostav_url(@psostav), params: { psostav: { university: @psostav.university } }
    assert_redirected_to psostav_url(@psostav)
  end

  test "should destroy psostav" do
    assert_difference('Psostav.count', -1) do
      delete psostav_url(@psostav)
    end

    assert_redirected_to psostavs_url
  end
end
