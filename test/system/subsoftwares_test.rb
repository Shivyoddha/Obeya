require "application_system_test_case"

class SubsoftwaresTest < ApplicationSystemTestCase
  setup do
    @subsoftware = subsoftwares(:one)
  end

  test "visiting the index" do
    visit subsoftwares_url
    assert_selector "h1", text: "Subsoftwares"
  end

  test "should create subsoftware" do
    visit subsoftwares_url
    click_on "New subsoftware"

    fill_in "Esats", with: @subsoftware.esats_id
    fill_in "Name", with: @subsoftware.name
    fill_in "Software", with: @subsoftware.software_id
    fill_in "Standard scope", with: @subsoftware.standard_scope
    fill_in "Version", with: @subsoftware.version
    click_on "Create Subsoftware"

    assert_text "Subsoftware was successfully created"
    click_on "Back"
  end

  test "should update Subsoftware" do
    visit subsoftware_url(@subsoftware)
    click_on "Edit this subsoftware", match: :first

    fill_in "Esats", with: @subsoftware.esats_id
    fill_in "Name", with: @subsoftware.name
    fill_in "Software", with: @subsoftware.software_id
    fill_in "Standard scope", with: @subsoftware.standard_scope
    fill_in "Version", with: @subsoftware.version
    click_on "Update Subsoftware"

    assert_text "Subsoftware was successfully updated"
    click_on "Back"
  end

  test "should destroy Subsoftware" do
    visit subsoftware_url(@subsoftware)
    click_on "Destroy this subsoftware", match: :first

    assert_text "Subsoftware was successfully destroyed"
  end
end
