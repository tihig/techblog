require 'test_helper'

class TagshipsControllerTest < ActionController::TestCase
  setup do
    @tagship = tagships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tagships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tagship" do
    assert_difference('Tagship.count') do
      post :create, tagship: { post_id: @tagship.post_id, tag_id: @tagship.tag_id }
    end

    assert_redirected_to tagship_path(assigns(:tagship))
  end

  test "should show tagship" do
    get :show, id: @tagship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tagship
    assert_response :success
  end

  test "should update tagship" do
    patch :update, id: @tagship, tagship: { post_id: @tagship.post_id, tag_id: @tagship.tag_id }
    assert_redirected_to tagship_path(assigns(:tagship))
  end

  test "should destroy tagship" do
    assert_difference('Tagship.count', -1) do
      delete :destroy, id: @tagship
    end

    assert_redirected_to tagships_path
  end
end
