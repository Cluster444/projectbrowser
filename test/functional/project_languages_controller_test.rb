require 'test_helper'

class ProjectLanguagesControllerTest < ActionController::TestCase
  setup do
    @project_language = project_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_language" do
    assert_difference('ProjectLanguage.count') do
      post :create, :project_language => @project_language.attributes
    end

    assert_redirected_to project_language_path(assigns(:project_language))
  end

  test "should show project_language" do
    get :show, :id => @project_language.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_language.to_param
    assert_response :success
  end

  test "should update project_language" do
    put :update, :id => @project_language.to_param, :project_language => @project_language.attributes
    assert_redirected_to project_language_path(assigns(:project_language))
  end

  test "should destroy project_language" do
    assert_difference('ProjectLanguage.count', -1) do
      delete :destroy, :id => @project_language.to_param
    end

    assert_redirected_to project_languages_path
  end
end
