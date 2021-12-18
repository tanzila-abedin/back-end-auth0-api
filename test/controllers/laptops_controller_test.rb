require "test_helper"

class LaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get laptops_url, as: :json
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post laptops_url, params: { laptop: { model: @laptop.model, name: @laptop.name, slug: @laptop.slug } }, as: :json
    end

    assert_response 201
  end

  test "should show laptop" do
    get laptop_url(@laptop), as: :json
    assert_response :success
  end

  test "should update laptop" do
    patch laptop_url(@laptop), params: { laptop: { model: @laptop.model, name: @laptop.name, slug: @laptop.slug } }, as: :json
    assert_response 200
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete laptop_url(@laptop), as: :json
    end

    assert_response 204
  end
end
