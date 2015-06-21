require 'test_helper'

class DistributedHealthsControllerTest < ActionController::TestCase
  setup do
    @distributed_health = distributed_healths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distributed_healths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distributed_health" do
    assert_difference('DistributedHealth.count') do
      post :create, distributed_health: { chlorine: @distributed_health.chlorine, hardness: @distributed_health.hardness, lat: @distributed_health.lat, long: @distributed_health.long, magnified: @distributed_health.magnified, mercury: @distributed_health.mercury, odor: @distributed_health.odor, ph: @distributed_health.ph, ph: @distributed_health.ph, taste: @distributed_health.taste, temperature: @distributed_health.temperature }
    end

    assert_redirected_to distributed_health_path(assigns(:distributed_health))
  end

  test "should show distributed_health" do
    get :show, id: @distributed_health
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distributed_health
    assert_response :success
  end

  test "should update distributed_health" do
    patch :update, id: @distributed_health, distributed_health: { chlorine: @distributed_health.chlorine, hardness: @distributed_health.hardness, lat: @distributed_health.lat, long: @distributed_health.long, magnified: @distributed_health.magnified, mercury: @distributed_health.mercury, odor: @distributed_health.odor, ph: @distributed_health.ph, ph: @distributed_health.ph, taste: @distributed_health.taste, temperature: @distributed_health.temperature }
    assert_redirected_to distributed_health_path(assigns(:distributed_health))
  end

  test "should destroy distributed_health" do
    assert_difference('DistributedHealth.count', -1) do
      delete :destroy, id: @distributed_health
    end

    assert_redirected_to distributed_healths_path
  end
end
