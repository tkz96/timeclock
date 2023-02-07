require "test_helper"

class TimeclocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timeclock = timeclocks(:one)
  end

  test "should get index" do
    get timeclocks_url
    assert_response :success
  end

  test "should get new" do
    get new_timeclock_url
    assert_response :success
  end

  test "should create timeclock" do
    assert_difference("Timeclock.count") do
      post timeclocks_url, params: { timeclock: { punch_in: @timeclock.punch_in, punch_out: @timeclock.punch_out, worker_id_id: @timeclock.worker_id_id } }
    end

    assert_redirected_to timeclock_url(Timeclock.last)
  end

  test "should show timeclock" do
    get timeclock_url(@timeclock)
    assert_response :success
  end

  test "should get edit" do
    get edit_timeclock_url(@timeclock)
    assert_response :success
  end

  test "should update timeclock" do
    patch timeclock_url(@timeclock), params: { timeclock: { punch_in: @timeclock.punch_in, punch_out: @timeclock.punch_out, worker_id_id: @timeclock.worker_id_id } }
    assert_redirected_to timeclock_url(@timeclock)
  end

  test "should destroy timeclock" do
    assert_difference("Timeclock.count", -1) do
      delete timeclock_url(@timeclock)
    end

    assert_redirected_to timeclocks_url
  end
end
