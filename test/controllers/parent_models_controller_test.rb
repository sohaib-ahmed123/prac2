require 'test_helper'

class ParentModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_model = parent_models(:one)
  end

  test "should get index" do
    get parent_models_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_model_url
    assert_response :success
  end

  test "should create parent_model" do
    assert_difference('ParentModel.count') do
      post parent_models_url, params: { parent_model: {  } }
    end

    assert_redirected_to parent_model_url(ParentModel.last)
  end

  test "should show parent_model" do
    get parent_model_url(@parent_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_model_url(@parent_model)
    assert_response :success
  end

  test "should update parent_model" do
    patch parent_model_url(@parent_model), params: { parent_model: {  } }
    assert_redirected_to parent_model_url(@parent_model)
  end

  test "should destroy parent_model" do
    assert_difference('ParentModel.count', -1) do
      delete parent_model_url(@parent_model)
    end

    assert_redirected_to parent_models_url
  end
end
