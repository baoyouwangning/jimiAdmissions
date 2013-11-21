require 'test_helper'

class CourseDescriptionAndPricesControllerTest < ActionController::TestCase
  setup do
    @course_description_and_price = course_description_and_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_description_and_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_description_and_price" do
    assert_difference('CourseDescriptionAndPrice.count') do
      post :create, course_description_and_price: { course_hour: @course_description_and_price.course_hour, course_name: @course_description_and_price.course_name, course_price: @course_description_and_price.course_price, course_teacher: @course_description_and_price.course_teacher }
    end

    assert_redirected_to course_description_and_price_path(assigns(:course_description_and_price))
  end

  test "should show course_description_and_price" do
    get :show, id: @course_description_and_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_description_and_price
    assert_response :success
  end

  test "should update course_description_and_price" do
    patch :update, id: @course_description_and_price, course_description_and_price: { course_hour: @course_description_and_price.course_hour, course_name: @course_description_and_price.course_name, course_price: @course_description_and_price.course_price, course_teacher: @course_description_and_price.course_teacher }
    assert_redirected_to course_description_and_price_path(assigns(:course_description_and_price))
  end

  test "should destroy course_description_and_price" do
    assert_difference('CourseDescriptionAndPrice.count', -1) do
      delete :destroy, id: @course_description_and_price
    end

    assert_redirected_to course_description_and_prices_path
  end
end
