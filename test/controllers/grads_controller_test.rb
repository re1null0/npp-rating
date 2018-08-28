require 'test_helper'

class GradsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grad = grads(:one)
  end

  test "should get index" do
    get grads_url
    assert_response :success
  end

  test "should get new" do
    get new_grad_url
    assert_response :success
  end

  test "should create grad" do
    assert_difference('Grad.count') do
      post grads_url, params: { grad: { dob: @grad.dob, fio: @grad.fio, forma: @grad.forma, gender: @grad.gender, iin: @grad.iin, mob: @grad.mob, otd: @grad.otd } }
    end

    assert_redirected_to grad_url(Grad.last)
  end

  test "should show grad" do
    get grad_url(@grad)
    assert_response :success
  end

  test "should get edit" do
    get edit_grad_url(@grad)
    assert_response :success
  end

  test "should update grad" do
    patch grad_url(@grad), params: { grad: { dob: @grad.dob, fio: @grad.fio, forma: @grad.forma, gender: @grad.gender, iin: @grad.iin, mob: @grad.mob, otd: @grad.otd } }
    assert_redirected_to grad_url(@grad)
  end

  test "should destroy grad" do
    assert_difference('Grad.count', -1) do
      delete grad_url(@grad)
    end

    assert_redirected_to grads_url
  end
end
