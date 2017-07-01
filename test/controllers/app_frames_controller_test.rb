require 'test_helper'

class AppFramesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_frame = app_frames(:one)
  end

  test "should get index" do
    get app_frames_url
    assert_response :success
  end

  test "should get new" do
    get new_app_frame_url
    assert_response :success
  end

  test "should create app_frame" do
    assert_difference('AppFrame.count') do
      post app_frames_url, params: { app_frame: { app_id: @app_frame.app_id, frame: @app_frame.frame, is_visible: @app_frame.is_visible } }
    end

    assert_redirected_to app_frame_url(AppFrame.last)
  end

  test "should show app_frame" do
    get app_frame_url(@app_frame)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_frame_url(@app_frame)
    assert_response :success
  end

  test "should update app_frame" do
    patch app_frame_url(@app_frame), params: { app_frame: { app_id: @app_frame.app_id, frame: @app_frame.frame, is_visible: @app_frame.is_visible } }
    assert_redirected_to app_frame_url(@app_frame)
  end

  test "should destroy app_frame" do
    assert_difference('AppFrame.count', -1) do
      delete app_frame_url(@app_frame)
    end

    assert_redirected_to app_frames_url
  end
end
