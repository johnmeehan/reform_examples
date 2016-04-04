require 'test_helper'

class ToysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toy = toys(:one)
  end

  test "should get index" do
    get toys_url
    assert_response :success
  end

  test "should get new" do
    get new_toy_url
    assert_response :success
  end

  test "should create toy" do
    assert_difference('Toy.count') do
      post toys_url, params: { toy: { dog_id: @toy.dog_id, name: @toy.name } }
    end

    assert_redirected_to toy_path(Toy.last)
  end

  test "should show toy" do
    get toy_url(@toy)
    assert_response :success
  end

  test "should get edit" do
    get edit_toy_url(@toy)
    assert_response :success
  end

  test "should update toy" do
    patch toy_url(@toy), params: { toy: { dog_id: @toy.dog_id, name: @toy.name } }
    assert_redirected_to toy_path(@toy)
  end

  test "should destroy toy" do
    assert_difference('Toy.count', -1) do
      delete toy_url(@toy)
    end

    assert_redirected_to toys_path
  end
end
