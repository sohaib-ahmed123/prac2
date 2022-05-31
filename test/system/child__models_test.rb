require "application_system_test_case"

class ChildModelsTest < ApplicationSystemTestCase
  setup do
    @child__model = child__models(:one)
  end

  test "visiting the index" do
    visit child__models_url
    assert_selector "h1", text: "Child Models"
  end

  test "creating a Child  model" do
    visit child__models_url
    click_on "New Child Model"

    click_on "Create Child  model"

    assert_text "Child  model was successfully created"
    click_on "Back"
  end

  test "updating a Child  model" do
    visit child__models_url
    click_on "Edit", match: :first

    click_on "Update Child  model"

    assert_text "Child  model was successfully updated"
    click_on "Back"
  end

  test "destroying a Child  model" do
    visit child__models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Child  model was successfully destroyed"
  end
end
