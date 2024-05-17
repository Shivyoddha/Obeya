require "test_helper"

class SubsoftwaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subsoftware = subsoftwares(:one)
  end

  test "should get index" do
    get subsoftwares_url
    assert_response :success
  end

  test "should get new" do
    get new_subsoftware_url
    assert_response :success
  end

  test "should create subsoftware" do
    assert_difference("Subsoftware.count") do
      post subsoftwares_url, params: { subsoftware: { esats_id: @subsoftware.esats_id, name: @subsoftware.name, software_id: @subsoftware.software_id, standard_scope: @subsoftware.standard_scope, version: @subsoftware.version } }
    end

    assert_redirected_to subsoftware_url(Subsoftware.last)
  end

  test "should show subsoftware" do
    get subsoftware_url(@subsoftware)
    assert_response :success
  end

  test "should get edit" do
    get edit_subsoftware_url(@subsoftware)
    assert_response :success
  end

  test "should update subsoftware" do
    patch subsoftware_url(@subsoftware), params: { subsoftware: { esats_id: @subsoftware.esats_id, name: @subsoftware.name, software_id: @subsoftware.software_id, standard_scope: @subsoftware.standard_scope, version: @subsoftware.version } }
    assert_redirected_to subsoftware_url(@subsoftware)
  end

  test "should destroy subsoftware" do
    assert_difference("Subsoftware.count", -1) do
      delete subsoftware_url(@subsoftware)
    end

    assert_redirected_to subsoftwares_url
  end
end
