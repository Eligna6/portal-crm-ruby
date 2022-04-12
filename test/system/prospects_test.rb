require "application_system_test_case"

class ProspectsTest < ApplicationSystemTestCase
  setup do
    @prospect = prospects(:one)
  end

  test "visiting the index" do
    visit prospects_url
    assert_selector "h1", text: "Prospects"
  end

  test "should create prospect" do
    visit prospects_url
    click_on "New prospect"

    fill_in "Email", with: @prospect.email
    fill_in "Entered by", with: @prospect.entered_by
    fill_in "Name", with: @prospect.name
    fill_in "Phone", with: @prospect.phone
    fill_in "Status", with: @prospect.status
    click_on "Create Prospect"

    assert_text "Prospect was successfully created"
    click_on "Back"
  end

  test "should update Prospect" do
    visit prospect_url(@prospect)
    click_on "Edit this prospect", match: :first

    fill_in "Email", with: @prospect.email
    fill_in "Entered by", with: @prospect.entered_by
    fill_in "Name", with: @prospect.name
    fill_in "Phone", with: @prospect.phone
    fill_in "Status", with: @prospect.status
    click_on "Update Prospect"

    assert_text "Prospect was successfully updated"
    click_on "Back"
  end

  test "should destroy Prospect" do
    visit prospect_url(@prospect)
    click_on "Destroy this prospect", match: :first

    assert_text "Prospect was successfully destroyed"
  end
end
