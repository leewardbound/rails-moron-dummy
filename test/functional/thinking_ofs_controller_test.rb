require 'test_helper'

class ThinkingOfsControllerTest < ActionController::TestCase
  setup do
    @thinking_of = thinking_ofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thinking_ofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thinking_of" do
    assert_difference('ThinkingOf.count') do
      post :create, :thinking_of => @thinking_of.attributes
    end

    assert_redirected_to thinking_of_path(assigns(:thinking_of))
  end

  test "should show thinking_of" do
    get :show, :id => @thinking_of.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @thinking_of.to_param
    assert_response :success
  end

  test "should update thinking_of" do
    put :update, :id => @thinking_of.to_param, :thinking_of => @thinking_of.attributes
    assert_redirected_to thinking_of_path(assigns(:thinking_of))
  end

  test "should destroy thinking_of" do
    assert_difference('ThinkingOf.count', -1) do
      delete :destroy, :id => @thinking_of.to_param
    end

    assert_redirected_to thinking_ofs_path
  end
end
