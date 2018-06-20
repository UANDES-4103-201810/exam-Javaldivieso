require 'test_helper'

class RepicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repice = repices(:one)
  end

  test "should get index" do
    get repices_url
    assert_response :success
  end

  test "should get new" do
    get new_repice_url
    assert_response :success
  end

  test "should create repice" do
    assert_difference('Repice.count') do
      post repices_url, params: { repice: { Repiceingredient_id: @repice.Repiceingredient_id, price: @repice.price } }
    end

    assert_redirected_to repice_url(Repice.last)
  end

  test "should show repice" do
    get repice_url(@repice)
    assert_response :success
  end

  test "should get edit" do
    get edit_repice_url(@repice)
    assert_response :success
  end

  test "should update repice" do
    patch repice_url(@repice), params: { repice: { Repiceingredient_id: @repice.Repiceingredient_id, price: @repice.price } }
    assert_redirected_to repice_url(@repice)
  end

  test "should destroy repice" do
    assert_difference('Repice.count', -1) do
      delete repice_url(@repice)
    end

    assert_redirected_to repices_url
  end
end
