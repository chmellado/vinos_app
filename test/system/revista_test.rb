require "application_system_test_case"

class RevistaTest < ApplicationSystemTestCase
  setup do
    @revistum = revista(:one)
  end

  test "visiting the index" do
    visit revista_url
    assert_selector "h1", text: "Revista"
  end

  test "creating a Revistum" do
    visit revista_url
    click_on "New Revistum"

    fill_in "Enologos", with: @revistum.enologos_id
    fill_in "Name", with: @revistum.name
    click_on "Create Revistum"

    assert_text "Revistum was successfully created"
    click_on "Back"
  end

  test "updating a Revistum" do
    visit revista_url
    click_on "Edit", match: :first

    fill_in "Enologos", with: @revistum.enologos_id
    fill_in "Name", with: @revistum.name
    click_on "Update Revistum"

    assert_text "Revistum was successfully updated"
    click_on "Back"
  end

  test "destroying a Revistum" do
    visit revista_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revistum was successfully destroyed"
  end
end
