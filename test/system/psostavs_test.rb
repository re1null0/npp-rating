require "application_system_test_case"

class PsostavsTest < ApplicationSystemTestCase
  setup do
    @psostav = psostavs(:one)
  end

  test "visiting the index" do
    visit psostavs_url
    assert_selector "h1", text: "Psostavs"
  end

  test "creating a Psostav" do
    visit psostavs_url
    click_on "New Psostav"

    fill_in "University", with: @psostav.university
    click_on "Create Psostav"

    assert_text "Psostav was successfully created"
    click_on "Back"
  end

  test "updating a Psostav" do
    visit psostavs_url
    click_on "Edit", match: :first

    fill_in "University", with: @psostav.university
    click_on "Update Psostav"

    assert_text "Psostav was successfully updated"
    click_on "Back"
  end

  test "destroying a Psostav" do
    visit psostavs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Psostav was successfully destroyed"
  end
end
