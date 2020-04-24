require 'test_helper'

class EnsamblajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ensamblaje = ensamblajes(:one)
  end

  test "should get index" do
    get ensamblajes_url
    assert_response :success
  end

  test "should get new" do
    get new_ensamblaje_url
    assert_response :success
  end

  test "should create ensamblaje" do
    assert_difference('Ensamblaje.count') do
      post ensamblajes_url, params: { ensamblaje: {  } }
    end

    assert_redirected_to ensamblaje_url(Ensamblaje.last)
  end

  test "should show ensamblaje" do
    get ensamblaje_url(@ensamblaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_ensamblaje_url(@ensamblaje)
    assert_response :success
  end

  test "should update ensamblaje" do
    patch ensamblaje_url(@ensamblaje), params: { ensamblaje: {  } }
    assert_redirected_to ensamblaje_url(@ensamblaje)
  end

  test "should destroy ensamblaje" do
    assert_difference('Ensamblaje.count', -1) do
      delete ensamblaje_url(@ensamblaje)
    end

    assert_redirected_to ensamblajes_url
  end
end
