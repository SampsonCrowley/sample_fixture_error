require 'test_helper'

class UniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unique = uniques(:one)
  end

  test "should get index" do
    get uniques_url
    assert_response :success
  end

  test "should get new" do
    get new_unique_url
    assert_response :success
  end

  test "should create unique" do
    assert_difference('Unique.count') do
      post uniques_url, params: { unique: { value: @unique.value } }
    end

    assert_redirected_to unique_url(Unique.last)
  end

  test "should show unique" do
    get unique_url(@unique)
    assert_response :success
  end

  test "should get edit" do
    get edit_unique_url(@unique)
    assert_response :success
  end

  test "should update unique" do
    patch unique_url(@unique), params: { unique: { value: @unique.value } }
    assert_redirected_to unique_url(@unique)
  end

  test "should destroy unique" do
    assert_difference('Unique.count', -1) do
      delete unique_url(@unique)
    end

    assert_redirected_to uniques_url
  end
end
