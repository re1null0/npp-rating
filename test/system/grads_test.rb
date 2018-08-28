require "application_system_test_case"

class GradsTest < ApplicationSystemTestCase
  setup do
    @grad = grads(:one)
  end

  test "visiting the index" do
    visit grads_url
    assert_selector "h1", text: "Grads"
  end

  test "creating a Grad" do
    visit grads_url
    click_on "New Grad"

    fill_in "Dob", with: @grad.dob
    fill_in "Fio", with: @grad.fio
    fill_in "Forma", with: @grad.forma
    fill_in "Gender", with: @grad.gender
    fill_in "Iin", with: @grad.iin
    fill_in "Mob", with: @grad.mob
    fill_in "Otd", with: @grad.otd
    click_on "Create Grad"

    assert_text "Grad was successfully created"
    click_on "Back"
  end

  test "updating a Grad" do
    visit grads_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @grad.dob
    fill_in "Fio", with: @grad.fio
    fill_in "Forma", with: @grad.forma
    fill_in "Gender", with: @grad.gender
    fill_in "Iin", with: @grad.iin
    fill_in "Mob", with: @grad.mob
    fill_in "Otd", with: @grad.otd
    click_on "Update Grad"

    assert_text "Grad was successfully updated"
    click_on "Back"
  end

  test "destroying a Grad" do
    visit grads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grad was successfully destroyed"
  end
end
