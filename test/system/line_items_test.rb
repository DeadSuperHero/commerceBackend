require "application_system_test_case"

class LineItemsTest < ApplicationSystemTestCase
  setup do
    @line_item = line_items(:one)
  end

  test "visiting the index" do
    visit line_items_url
    assert_selector "h1", text: "Line Items"
  end

  test "creating a Line item" do
    visit line_items_url
    click_on "New Line Item"

    fill_in "Description", with: @line_item.description
    fill_in "Image", with: @line_item.image
    fill_in "Name", with: @line_item.name
    fill_in "Price", with: @line_item.price
    fill_in "Store Id", with: @line_item.store_id_id
    click_on "Create Line item"

    assert_text "Line item was successfully created"
    click_on "Back"
  end

  test "updating a Line item" do
    visit line_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @line_item.description
    fill_in "Image", with: @line_item.image
    fill_in "Name", with: @line_item.name
    fill_in "Price", with: @line_item.price
    fill_in "Store Id", with: @line_item.store_id_id
    click_on "Update Line item"

    assert_text "Line item was successfully updated"
    click_on "Back"
  end

  test "destroying a Line item" do
    visit line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line item was successfully destroyed"
  end
end