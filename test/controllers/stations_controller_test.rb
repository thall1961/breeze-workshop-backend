require "test_helper"

class StationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get stations_url, as: :json
    assert_response :success
  end

  test "should create station" do
    assert_difference('Station.count') do
      post stations_url, params: { station: { active: @station.active, allowed: @station.allowed, city_code: @station.city_code, country_code: @station.country_code, currency_code: @station.currency_code, full_name: @station.full_name, latitude: @station.latitude, longitude: @station.longitude, province_state_code: @station.province_state_code, station_code: @station.station_code, time_zone_code: @station.time_zone_code } }, as: :json
    end

    assert_response 201
  end

  test "should show station" do
    get station_url(@station), as: :json
    assert_response :success
  end

  test "should update station" do
    patch station_url(@station), params: { station: { active: @station.active, allowed: @station.allowed, city_code: @station.city_code, country_code: @station.country_code, currency_code: @station.currency_code, full_name: @station.full_name, latitude: @station.latitude, longitude: @station.longitude, province_state_code: @station.province_state_code, station_code: @station.station_code, time_zone_code: @station.time_zone_code } }, as: :json
    assert_response 200
  end

  test "should destroy station" do
    assert_difference('Station.count', -1) do
      delete station_url(@station), as: :json
    end

    assert_response 204
  end
end
