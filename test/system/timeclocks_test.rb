require "application_system_test_case"

class TimeclocksTest < ApplicationSystemTestCase
  setup do
    @timeclock = timeclocks(:one)
  end

  test "visiting the index" do
    visit timeclocks_url
    assert_selector "h1", text: "Timeclocks"
  end

  test "should create timeclock" do
    visit timeclocks_url
    click_on "New timeclock"

    fill_in "Punch in", with: @timeclock.punch_in
    fill_in "Punch out", with: @timeclock.punch_out
    fill_in "Worker id", with: @timeclock.worker_id_id
    click_on "Create Timeclock"

    assert_text "Timeclock was successfully created"
    click_on "Back"
  end

  test "should update Timeclock" do
    visit timeclock_url(@timeclock)
    click_on "Edit this timeclock", match: :first

    fill_in "Punch in", with: @timeclock.punch_in
    fill_in "Punch out", with: @timeclock.punch_out
    fill_in "Worker id", with: @timeclock.worker_id_id
    click_on "Update Timeclock"

    assert_text "Timeclock was successfully updated"
    click_on "Back"
  end

  test "should destroy Timeclock" do
    visit timeclock_url(@timeclock)
    click_on "Destroy this timeclock", match: :first

    assert_text "Timeclock was successfully destroyed"
  end
end
