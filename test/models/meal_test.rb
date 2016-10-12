require 'test_helper'

class MealTest < ActiveSupport::TestCase
 def setup
    @user = users(:one)
    @meal = @user.meals.build(name:"Lorem ipsum", description: "Lorem ipsum", weight: 1, price: 1)
  end

  test "should be valid" do
    assert @meal.valid?
  end

  test "user id should be present" do
    @meal.user_id = nil
    assert_not @meal.valid?
  end

  test "description should be present" do
    @meal.description = "   "
    assert_not @meal.valid?
  end

  test "price should be present" do
    @meal.price = "   "
    assert_not @meal.valid?
  end

  test "weight should be present" do
    @meal.weight = "   "
    assert_not @meal.valid?
  end
end
