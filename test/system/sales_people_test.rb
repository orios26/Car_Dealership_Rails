require "application_system_test_case"

class SalesPeopleTest < ApplicationSystemTestCase
  setup do
    @sales_person = sales_people(:one)
  end

  test "visiting the index" do
    visit sales_people_url
    assert_selector "h1", text: "Sales People"
  end

  test "creating a Sales person" do
    visit sales_people_url
    click_on "New Sales Person"

    fill_in "First Name", with: @sales_person.first_name
    fill_in "Last Name", with: @sales_person.last_name
    fill_in "Manager", with: @sales_person.manager_id
    click_on "Create Sales person"

    assert_text "Sales person was successfully created"
    click_on "Back"
  end

  test "updating a Sales person" do
    visit sales_people_url
    click_on "Edit", match: :first

    fill_in "First Name", with: @sales_person.first_name
    fill_in "Last Name", with: @sales_person.last_name
    fill_in "Manager", with: @sales_person.manager_id
    click_on "Update Sales person"

    assert_text "Sales person was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales person" do
    visit sales_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales person was successfully destroyed"
  end
end
