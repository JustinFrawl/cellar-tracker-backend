require 'test_helper'

class CellarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cellar = cellars(:one)
  end

  test "should get index" do
    get cellars_url, as: :json
    assert_response :success
  end

  test "should create cellar" do
    assert_difference('Cellar.count') do
      post cellars_url, params: { cellar: { beerId: @cellar.beerId, rating: @cellar.rating, userId: @cellar.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show cellar" do
    get cellar_url(@cellar), as: :json
    assert_response :success
  end

  test "should update cellar" do
    patch cellar_url(@cellar), params: { cellar: { beerId: @cellar.beerId, rating: @cellar.rating, userId: @cellar.userId } }, as: :json
    assert_response 200
  end

  test "should destroy cellar" do
    assert_difference('Cellar.count', -1) do
      delete cellar_url(@cellar), as: :json
    end

    assert_response 204
  end
end
