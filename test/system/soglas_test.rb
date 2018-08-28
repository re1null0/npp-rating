require "application_system_test_case"

class SoglasTest < ApplicationSystemTestCase
  setup do
    @sogla = soglas(:one)
  end

  test "visiting the index" do
    visit soglas_url
    assert_selector "h1", text: "Soglas"
  end

  test "creating a Sogla" do
    visit soglas_url
    click_on "New Sogla"

    fill_in "University", with: @sogla.university
    click_on "Create Sogla"

    assert_text "Sogla was successfully created"
    click_on "Back"
  end

  test "updating a Sogla" do
    visit soglas_url
    click_on "Edit", match: :first

    fill_in "University", with: @sogla.university
    click_on "Update Sogla"

    assert_text "Sogla was successfully updated"
    click_on "Back"
  end

  test "destroying a Sogla" do
    visit soglas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sogla was successfully destroyed"
  end
end
