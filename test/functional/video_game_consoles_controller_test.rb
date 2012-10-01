require 'test_helper'

class VideoGameConsolesControllerTest < ActionController::TestCase
  setup do
    @video_game_console = video_game_consoles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_game_consoles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_game_console" do
    assert_difference('VideoGameConsole.count') do
      post :create, video_game_console: { manufacturer: @video_game_console.manufacturer, name: @video_game_console.name, release_date: @video_game_console.release_date }
    end

    assert_redirected_to video_game_console_path(assigns(:video_game_console))
  end

  test "should show video_game_console" do
    get :show, id: @video_game_console
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_game_console
    assert_response :success
  end

  test "should update video_game_console" do
    put :update, id: @video_game_console, video_game_console: { manufacturer: @video_game_console.manufacturer, name: @video_game_console.name, release_date: @video_game_console.release_date }
    assert_redirected_to video_game_console_path(assigns(:video_game_console))
  end

  test "should destroy video_game_console" do
    assert_difference('VideoGameConsole.count', -1) do
      delete :destroy, id: @video_game_console
    end

    assert_redirected_to video_game_consoles_path
  end
end
