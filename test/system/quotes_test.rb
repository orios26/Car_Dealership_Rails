require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Customer", with: @quote.customer_id
    fill_in "Markup Price", with: @quote.markup_price
    fill_in "Sales Person", with: @quote.sales_person_id
    fill_in "Total Price", with: @quote.total_price
    fill_in "Vehicle", with: @quote.vehicle_id
    fill_in "Wholesale Price", with: @quote.wholesale_price
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @quote.customer_id
    fill_in "Markup Price", with: @quote.markup_price
    fill_in "Sales Person", with: @quote.sales_person_id
    fill_in "Total Price", with: @quote.total_price
    fill_in "Vehicle", with: @quote.vehicle_id
    fill_in "Wholesale Price", with: @quote.wholesale_price
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
