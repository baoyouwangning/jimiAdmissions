require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
<<<<<<< HEAD
      post :create, content: { bannerDescription: @content.bannerDescription, courseDescriptionAndPrice: @content.courseDescriptionAndPrice, faculty: @content.faculty, relationships: @content.relationships, teachingAims: @content.teachingAims }
=======
      post :create, content: { courseDescriptionAndPrice: @content.courseDescriptionAndPrice, faculty: @content.faculty, header: @content.header, relationships: @content.relationships, teachingAims: @content.teachingAims }
>>>>>>> 24d4e9f38d522a0813bcebc98fcbc3c1d0806e2b
    end

    assert_redirected_to content_path(assigns(:content))
  end

  test "should show content" do
    get :show, id: @content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content
    assert_response :success
  end

  test "should update content" do
<<<<<<< HEAD
    patch :update, id: @content, content: { bannerDescription: @content.bannerDescription, courseDescriptionAndPrice: @content.courseDescriptionAndPrice, faculty: @content.faculty, relationships: @content.relationships, teachingAims: @content.teachingAims }
=======
    patch :update, id: @content, content: { courseDescriptionAndPrice: @content.courseDescriptionAndPrice, faculty: @content.faculty, header: @content.header, relationships: @content.relationships, teachingAims: @content.teachingAims }
>>>>>>> 24d4e9f38d522a0813bcebc98fcbc3c1d0806e2b
    assert_redirected_to content_path(assigns(:content))
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, id: @content
    end

    assert_redirected_to contents_path
  end
end
