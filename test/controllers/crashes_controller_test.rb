require 'test_helper'

class CrashesControllerTest < ActionController::TestCase
  setup do
    @crash = crashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crash" do
    assert_difference('Crash.count') do
      post :create, crash: { aboard: @crash.aboard, cn: @crash.cn, date: @crash.date, fatalities: @crash.fatalities, flight: @crash.flight, ground: @crash.ground, location: @crash.location, operator: @crash.operator, registration: @crash.registration, route: @crash.route, summary: @crash.summary, time: @crash.time, type: @crash.type }
    end

    assert_redirected_to crash_path(assigns(:crash))
  end

  test "should show crash" do
    get :show, id: @crash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crash
    assert_response :success
  end

  test "should update crash" do
    patch :update, id: @crash, crash: { aboard: @crash.aboard, cn: @crash.cn, date: @crash.date, fatalities: @crash.fatalities, flight: @crash.flight, ground: @crash.ground, location: @crash.location, operator: @crash.operator, registration: @crash.registration, route: @crash.route, summary: @crash.summary, time: @crash.time, type: @crash.type }
    assert_redirected_to crash_path(assigns(:crash))
  end

  test "should destroy crash" do
    assert_difference('Crash.count', -1) do
      delete :destroy, id: @crash
    end

    assert_redirected_to crashes_path
  end
end
