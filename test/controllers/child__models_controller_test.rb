require 'test_helper'

class ChildModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child__model = child__models(:one)
  end

  test "should get index" do
    get child__models_url
    assert_response :success
  end

  test "should get new" do
    get new_child__model_url
    assert_response :success
  end

  test "should create child__model" do
    assert_difference('ChildModel.count') do
      post child__models_url, params: { child__model: {  } }
    end

    assert_redirected_to child__model_url(ChildModel.last)
  end

  test "should show child__model" do
    get child__model_url(@child__model)
    assert_response :success
  end

  test "should get edit" do
    get edit_child__model_url(@child__model)
    assert_response :success
  end

  test "should update child__model" do
    patch child__model_url(@child__model), params: { child__model: {  } }
    assert_redirected_to child__model_url(@child__model)
  end

  test "should destroy child__model" do
    assert_difference('ChildModel.count', -1) do
      delete child__model_url(@child__model)
    end

    assert_redirected_to child__models_url
  end
end
