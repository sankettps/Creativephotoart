require 'test_helper'

class AppAddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_add = app_adds(:one)
  end

  test "should get index" do
    get app_adds_url
    assert_response :success
  end

  test "should get new" do
    get new_app_add_url
    assert_response :success
  end

  test "should create app_add" do
    assert_difference('AppAdd.count') do
      post app_adds_url, params: { app_add: { ad_mob_id: @app_add.ad_mob_id, app_id: @app_add.app_id, fb_id: @app_add.fb_id, is_ad_mob: @app_add.is_ad_mob, is_fb: @app_add.is_fb, is_shown: @app_add.is_shown, name: @app_add.name } }
    end

    assert_redirected_to app_add_url(AppAdd.last)
  end

  test "should show app_add" do
    get app_add_url(@app_add)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_add_url(@app_add)
    assert_response :success
  end

  test "should update app_add" do
    patch app_add_url(@app_add), params: { app_add: { ad_mob_id: @app_add.ad_mob_id, app_id: @app_add.app_id, fb_id: @app_add.fb_id, is_ad_mob: @app_add.is_ad_mob, is_fb: @app_add.is_fb, is_shown: @app_add.is_shown, name: @app_add.name } }
    assert_redirected_to app_add_url(@app_add)
  end

  test "should destroy app_add" do
    assert_difference('AppAdd.count', -1) do
      delete app_add_url(@app_add)
    end

    assert_redirected_to app_adds_url
  end
end
