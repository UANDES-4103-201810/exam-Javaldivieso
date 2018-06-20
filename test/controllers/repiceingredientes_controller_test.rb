require 'test_helper'

class RepiceingredientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repiceingrediente = repiceingredientes(:one)
  end

  test "should get index" do
    get repiceingredientes_url
    assert_response :success
  end

  test "should get new" do
    get new_repiceingrediente_url
    assert_response :success
  end

  test "should create repiceingrediente" do
    assert_difference('Repiceingrediente.count') do
      post repiceingredientes_url, params: { repiceingrediente: { ingredient_id: @repiceingrediente.ingredient_id, repice_id: @repiceingrediente.repice_id } }
    end

    assert_redirected_to repiceingrediente_url(Repiceingrediente.last)
  end

  test "should show repiceingrediente" do
    get repiceingrediente_url(@repiceingrediente)
    assert_response :success
  end

  test "should get edit" do
    get edit_repiceingrediente_url(@repiceingrediente)
    assert_response :success
  end

  test "should update repiceingrediente" do
    patch repiceingrediente_url(@repiceingrediente), params: { repiceingrediente: { ingredient_id: @repiceingrediente.ingredient_id, repice_id: @repiceingrediente.repice_id } }
    assert_redirected_to repiceingrediente_url(@repiceingrediente)
  end

  test "should destroy repiceingrediente" do
    assert_difference('Repiceingrediente.count', -1) do
      delete repiceingrediente_url(@repiceingrediente)
    end

    assert_redirected_to repiceingredientes_url
  end
end
