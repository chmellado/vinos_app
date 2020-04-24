require "application_system_test_case"

class EnsamblajesTest < ApplicationSystemTestCase
  setup do
    @ensamblaje = ensamblajes(:one)
  end

  test "visiting the index" do
    visit ensamblajes_url
    assert_selector "h1", text: "Ensamblajes"
  end

  test "creating a Ensamblaje" do
    visit ensamblajes_url
    click_on "New Ensamblaje"

    click_on "Create Ensamblaje"

    assert_text "Ensamblaje was successfully created"
    click_on "Back"
  end

  test "updating a Ensamblaje" do
    visit ensamblajes_url
    click_on "Edit", match: :first

    click_on "Update Ensamblaje"

    assert_text "Ensamblaje was successfully updated"
    click_on "Back"
  end

  test "destroying a Ensamblaje" do
    visit ensamblajes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ensamblaje was successfully destroyed"
  end
end
