require "application_system_test_case"

class ParentModelsTest < ApplicationSystemTestCase
  setup do
    @parent_model = parent_models(:one)
  end

  test "visiting the index" do
    visit parent_models_url
    assert_selector "h1", text: "Parent Models"
  end

  test "creating a Parent model" do
    visit parent_models_url
    click_on "New Parent Model"

    click_on "Create Parent model"

    assert_text "Parent model was successfully created"
    click_on "Back"
  end

  test "updating a Parent model" do
    visit parent_models_url
    click_on "Edit", match: :first

    click_on "Update Parent model"

    assert_text "Parent model was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent model" do
    visit parent_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent model was successfully destroyed"
  end
end
