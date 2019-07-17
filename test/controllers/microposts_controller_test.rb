# typed: ignore
require 'test_helper'

class MicropostsControllerTest < ActionController::TestCase
  setup do
    @micropost = microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost" do
    assert_difference('Micropost.count') do
      post :create, params: { micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    end

    assert_redirected_to micropost_path(assigns(:micropost))
  end

  test "should show micropost" do
    get :show, params: { id: @micropost }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @micropost }
    assert_response :success
  end

  test "should update micropost" do
    patch :update, params: { id: @micropost, micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    assert_redirected_to micropost_path(assigns(:micropost))
  end

  test "should destroy micropost" do
    assert_difference('Micropost.count', -1) do
      delete :destroy, params: { id: @micropost }
    end

    assert_redirected_to microposts_path
  end
end