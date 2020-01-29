require "application_system_test_case"

class UniquesTest < ApplicationSystemTestCase
  setup do
    @unique = uniques(:one)
  end

  test "visiting the index" do
    visit uniques_url
    assert_selector "h1", text: "Uniques"
  end

  test "creating a Unique" do
    visit uniques_url
    click_on "New Unique"

    fill_in "Value", with: @unique.value
    click_on "Create Unique"

    assert_text "Unique was successfully created"
    click_on "Back"
  end

  test "updating a Unique" do
    visit uniques_url
    click_on "Edit", match: :first

    fill_in "Value", with: @unique.value
    click_on "Update Unique"

    assert_text "Unique was successfully updated"
    click_on "Back"
  end

  test "destroying a Unique" do
    visit uniques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unique was successfully destroyed"
  end
end
