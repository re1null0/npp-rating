require 'test_helper'

class InvestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invest = invests(:one)
  end

  test "should get index" do
    get invests_url
    assert_response :success
  end

  test "should get new" do
    get new_invest_url
    assert_response :success
  end

  test "should create invest" do
    assert_difference('Invest.count') do
      post invests_url, params: { invest: { pod1: @invest.pod1, pod2: @invest.pod2, pod3: @invest.pod3, pod4: @invest.pod4, pod5: @invest.pod5, university: @invest.university, year1: @invest.year1, year2: @invest.year2, year3: @invest.year3, year4: @invest.year4, year5: @invest.year5, zayav1: @invest.zayav1, zayav2: @invest.zayav2, zayav3: @invest.zayav3, zayav4: @invest.zayav4, zayav5: @invest.zayav5 } }
    end

    assert_redirected_to invest_url(Invest.last)
  end

  test "should show invest" do
    get invest_url(@invest)
    assert_response :success
  end

  test "should get edit" do
    get edit_invest_url(@invest)
    assert_response :success
  end

  test "should update invest" do
    patch invest_url(@invest), params: { invest: { pod1: @invest.pod1, pod2: @invest.pod2, pod3: @invest.pod3, pod4: @invest.pod4, pod5: @invest.pod5, university: @invest.university, year1: @invest.year1, year2: @invest.year2, year3: @invest.year3, year4: @invest.year4, year5: @invest.year5, zayav1: @invest.zayav1, zayav2: @invest.zayav2, zayav3: @invest.zayav3, zayav4: @invest.zayav4, zayav5: @invest.zayav5 } }
    assert_redirected_to invest_url(@invest)
  end

  test "should destroy invest" do
    assert_difference('Invest.count', -1) do
      delete invest_url(@invest)
    end

    assert_redirected_to invests_url
  end
end
