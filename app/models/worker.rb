# app/models/worker.rb
class Worker < ApplicationRecord
  def duration
    if punch_in_time.present? && punch_out_time.present?
      time_diff(punch_in_time, punch_out_time)
    end
  end

  def time_diff(punch_in_time, punch_out_time)
    seconds_diff = (punch_in_time - punch_out_time).to_i.abs

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff

    "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end
end