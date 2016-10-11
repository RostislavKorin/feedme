require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end

  test "should redirect create when not logged in" do
    assert_no_difference('Meal.count') do
       post meals_url, params: { meal: { name: @meal.name, description: @meal.description, price: @meal.price, weight: @meal.weight, user_id: @meal.user_id} }
    end
    assert_redirected_to 'http://www.example.com/users/sign_in'
  end

  test "should create meal" do
    sign_in users(:one)
    assert_difference('Meal.count') do
      post meals_url, params: { meal: { name: @meal.name, description: @meal.description, price: @meal.price, weight: @meal.weight, user_id: @meal.user_id} }
    end

    assert_redirected_to meal_url(Meal.last)
  end

  test "should show meal" do
    get meal_url(@meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :success
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { name: @meal.name, description: @meal.description, price: @meal.price, weight: @meal.weight, user_id: @meal.user_id} }
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference('Meal.count', -1) do
       delete meal_url(@meal) 
    end
    assert_redirected_to 'http://www.example.com/users/sign_in'
  end

  test "should destroy meal" do
    sign_in users(:one)
    assert_difference('Meal.count', -1) do
      delete meal_url(@meal)
    end
    assert_redirected_to meals_url
  end
end
