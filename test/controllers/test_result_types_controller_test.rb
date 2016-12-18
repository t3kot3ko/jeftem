require 'test_helper'

class TestResultTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_result_type = test_result_types(:one)
  end

  test "should get index" do
    get test_result_types_url
    assert_response :success
  end

  test "should get new" do
    get new_test_result_type_url
    assert_response :success
  end

  test "should create test_result_type" do
    assert_difference('TestResultType.count') do
      post test_result_types_url, params: { test_result_type: { color: @test_result_type.color, name: @test_result_type.name } }
    end

    assert_redirected_to test_result_type_url(TestResultType.last)
  end

  test "should show test_result_type" do
    get test_result_type_url(@test_result_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_result_type_url(@test_result_type)
    assert_response :success
  end

  test "should update test_result_type" do
    patch test_result_type_url(@test_result_type), params: { test_result_type: { color: @test_result_type.color, name: @test_result_type.name } }
    assert_redirected_to test_result_type_url(@test_result_type)
  end

  test "should destroy test_result_type" do
    assert_difference('TestResultType.count', -1) do
      delete test_result_type_url(@test_result_type)
    end

    assert_redirected_to test_result_types_url
  end
end
