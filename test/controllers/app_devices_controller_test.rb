require 'test_helper'

class AppDevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_device = app_devices(:one)
  end

  test "should get index" do
    get app_devices_url
    assert_response :success
  end

  test "should get new" do
    get new_app_device_url
    assert_response :success
  end

  test "should create app_device" do
    assert_difference('AppDevice.count') do
      post app_devices_url, params: { app_device: { app_id: @app_device.app_id, device_id: @app_device.device_id } }
    end

    assert_redirected_to app_device_url(AppDevice.last)
  end

  test "should show app_device" do
    get app_device_url(@app_device)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_device_url(@app_device)
    assert_response :success
  end

  test "should update app_device" do
    patch app_device_url(@app_device), params: { app_device: { app_id: @app_device.app_id, device_id: @app_device.device_id } }
    assert_redirected_to app_device_url(@app_device)
  end

  test "should destroy app_device" do
    assert_difference('AppDevice.count', -1) do
      delete app_device_url(@app_device)
    end

    assert_redirected_to app_devices_url
  end
end
