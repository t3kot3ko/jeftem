require 'test_helper'

class TestCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_case = test_cases(:one)
  end

  test "should get index" do
    get test_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_test_case_url
    assert_response :success
  end

  test "should create test_case" do
    assert_difference('TestCase.count') do
      post test_cases_url, params: { test_case: { description: @test_case.description, expected_result: @test_case.expected_result, identifier: @test_case.identifier, postcondition: @test_case.postcondition, precondition: @test_case.precondition, section_id: @test_case.section_id, step: @test_case.step, summary: @test_case.summary, title: @test_case.title } }
    end

    assert_redirected_to test_case_url(TestCase.last)
  end

  test "should show test_case" do
    get test_case_url(@test_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_case_url(@test_case)
    assert_response :success
  end

  test "should update test_case" do
    patch test_case_url(@test_case), params: { test_case: { description: @test_case.description, expected_result: @test_case.expected_result, identifier: @test_case.identifier, postcondition: @test_case.postcondition, precondition: @test_case.precondition, section_id: @test_case.section_id, step: @test_case.step, summary: @test_case.summary, title: @test_case.title } }
    assert_redirected_to test_case_url(@test_case)
  end

  test "should destroy test_case" do
    assert_difference('TestCase.count', -1) do
      delete test_case_url(@test_case)
    end

    assert_redirected_to test_cases_url
  end
end
