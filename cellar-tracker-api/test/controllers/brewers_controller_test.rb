require 'test_helper'

class BrewersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brewer = brewers(:one)
  end

  test "should get index" do
    get brewers_url, as: :json
    assert_response :success
  end

  test "should create brewer" do
    assert_difference('Brewer.count') do
      post brewers_url, params: { brewer: { breweryId: @brewer.breweryId, name: @brewer.name } }, as: :json
    end

    assert_response 201
  end

  test "should show brewer" do
    get brewer_url(@brewer), as: :json
    assert_response :success
  end

  test "should update brewer" do
    patch brewer_url(@brewer), params: { brewer: { breweryId: @brewer.breweryId, name: @brewer.name } }, as: :json
    assert_response 200
  end

  test "should destroy brewer" do
    assert_difference('Brewer.count', -1) do
      delete brewer_url(@brewer), as: :json
    end

    assert_response 204
  end
end
