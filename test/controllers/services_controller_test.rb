require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url, as: :json
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { category: @service.category, name: @service.name, price: @service.price, request_method: @service.request_method } }, as: :json
    end

    assert_response 201
  end

  test "should show service" do
    get service_url(@service), as: :json
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { category: @service.category, name: @service.name, price: @service.price, request_method: @service.request_method } }, as: :json
    assert_response 200
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service), as: :json
    end

    assert_response 204
  end
end
