require 'test_helper'

class DiscsControllerTest < ActionController::TestCase
  setup do
    @disc = discs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disc" do
    assert_difference('Disc.count') do
      post :create, disc: @disc.attributes
    end

    assert_redirected_to disc_path(assigns(:disc))
  end

  test "should show disc" do
    get :show, id: @disc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disc
    assert_response :success
  end

  test "should update disc" do
    put :update, id: @disc, disc: @disc.attributes
    assert_redirected_to disc_path(assigns(:disc))
  end

  test "should destroy disc" do
    assert_difference('Disc.count', -1) do
      delete :destroy, id: @disc
    end

    assert_redirected_to discs_path
  end
end
