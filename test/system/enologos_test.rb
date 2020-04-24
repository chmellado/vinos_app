require "application_system_test_case"

class EnologosTest < ApplicationSystemTestCase
  setup do
    @enologo = enologos(:one)
  end

  test "visiting the index" do
    visit enologos_url
    assert_selector "h1", text: "Enologos"
  end

  test "creating a Enologo" do
    visit enologos_url
    click_on "New Enologo"

    fill_in "Age", with: @enologo.age
    fill_in "Name", with: @enologo.name
    fill_in "Nationality", with: @enologo.nationality
    click_on "Create Enologo"

    assert_text "Enologo was successfully created"
    click_on "Back"
  end

  test "updating a Enologo" do
    visit enologos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @enologo.age
    fill_in "Name", with: @enologo.name
    fill_in "Nationality", with: @enologo.nationality
    click_on "Update Enologo"

    assert_text "Enologo was successfully updated"
    click_on "Back"
  end

  test "destroying a Enologo" do
    visit enologos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enologo was successfully destroyed"
  end
end
