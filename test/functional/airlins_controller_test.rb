require 'test_helper'

class AirlinsControllerTest < ActionController::TestCase
  setup do
    @airlin = airlins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airlins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airlin" do
    assert_difference('Airlin.count') do
      post :create, airlin: { balance: @airlin.balance, name: @airlin.name }
    end

    assert_redirected_to airlin_path(assigns(:airlin))
  end

  test "should show airlin" do
    get :show, id: @airlin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airlin
    assert_response :success
  end

  test "should update airlin" do
    put :update, id: @airlin, airlin: { balance: @airlin.balance, name: @airlin.name }
    assert_redirected_to airlin_path(assigns(:airlin))
  end

  test "should destroy airlin" do
    assert_difference('Airlin.count', -1) do
      delete :destroy, id: @airlin
    end

    assert_redirected_to airlins_path
  end
end
