require 'test_helper'

class PizzaordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizzaorder = pizzaorders(:one)
  end

  test "should get index" do
    get pizzaorders_url
    assert_response :success
  end

  test "should get new" do
    get new_pizzaorder_url
    assert_response :success
  end

  test "should create pizzaorder" do
    assert_difference('Pizzaorder.count') do
      post pizzaorders_url, params: { pizzaorder: { order_id: @pizzaorder.order_id, pizza_id: @pizzaorder.pizza_id } }
    end

    assert_redirected_to pizzaorder_url(Pizzaorder.last)
  end

  test "should show pizzaorder" do
    get pizzaorder_url(@pizzaorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizzaorder_url(@pizzaorder)
    assert_response :success
  end

  test "should update pizzaorder" do
    patch pizzaorder_url(@pizzaorder), params: { pizzaorder: { order_id: @pizzaorder.order_id, pizza_id: @pizzaorder.pizza_id } }
    assert_redirected_to pizzaorder_url(@pizzaorder)
  end

  test "should destroy pizzaorder" do
    assert_difference('Pizzaorder.count', -1) do
      delete pizzaorder_url(@pizzaorder)
    end

    assert_redirected_to pizzaorders_url
  end
end
