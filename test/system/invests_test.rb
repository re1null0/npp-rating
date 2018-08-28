require "application_system_test_case"

class InvestsTest < ApplicationSystemTestCase
  setup do
    @invest = invests(:one)
  end

  test "visiting the index" do
    visit invests_url
    assert_selector "h1", text: "Invests"
  end

  test "creating a Invest" do
    visit invests_url
    click_on "New Invest"

    fill_in "Pod1", with: @invest.pod1
    fill_in "Pod2", with: @invest.pod2
    fill_in "Pod3", with: @invest.pod3
    fill_in "Pod4", with: @invest.pod4
    fill_in "Pod5", with: @invest.pod5
    fill_in "University", with: @invest.university
    fill_in "Year1", with: @invest.year1
    fill_in "Year2", with: @invest.year2
    fill_in "Year3", with: @invest.year3
    fill_in "Year4", with: @invest.year4
    fill_in "Year5", with: @invest.year5
    fill_in "Zayav1", with: @invest.zayav1
    fill_in "Zayav2", with: @invest.zayav2
    fill_in "Zayav3", with: @invest.zayav3
    fill_in "Zayav4", with: @invest.zayav4
    fill_in "Zayav5", with: @invest.zayav5
    click_on "Create Invest"

    assert_text "Invest was successfully created"
    click_on "Back"
  end

  test "updating a Invest" do
    visit invests_url
    click_on "Edit", match: :first

    fill_in "Pod1", with: @invest.pod1
    fill_in "Pod2", with: @invest.pod2
    fill_in "Pod3", with: @invest.pod3
    fill_in "Pod4", with: @invest.pod4
    fill_in "Pod5", with: @invest.pod5
    fill_in "University", with: @invest.university
    fill_in "Year1", with: @invest.year1
    fill_in "Year2", with: @invest.year2
    fill_in "Year3", with: @invest.year3
    fill_in "Year4", with: @invest.year4
    fill_in "Year5", with: @invest.year5
    fill_in "Zayav1", with: @invest.zayav1
    fill_in "Zayav2", with: @invest.zayav2
    fill_in "Zayav3", with: @invest.zayav3
    fill_in "Zayav4", with: @invest.zayav4
    fill_in "Zayav5", with: @invest.zayav5
    click_on "Update Invest"

    assert_text "Invest was successfully updated"
    click_on "Back"
  end

  test "destroying a Invest" do
    visit invests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invest was successfully destroyed"
  end
end
