require 'test_helper'

class RevistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revistum = revista(:one)
  end

  test "should get index" do
    get revista_url
    assert_response :success
  end

  test "should get new" do
    get new_revistum_url
    assert_response :success
  end

  test "should create revistum" do
    assert_difference('Revistum.count') do
      post revista_url, params: { revistum: { enologos_id: @revistum.enologos_id, name: @revistum.name } }
    end

    assert_redirected_to revistum_url(Revistum.last)
  end

  test "should show revistum" do
    get revistum_url(@revistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_revistum_url(@revistum)
    assert_response :success
  end

  test "should update revistum" do
    patch revistum_url(@revistum), params: { revistum: { enologos_id: @revistum.enologos_id, name: @revistum.name } }
    assert_redirected_to revistum_url(@revistum)
  end

  test "should destroy revistum" do
    assert_difference('Revistum.count', -1) do
      delete revistum_url(@revistum)
    end

    assert_redirected_to revista_url
  end
end
