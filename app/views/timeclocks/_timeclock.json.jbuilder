json.extract! timeclock, :id, :worker_id_id, :punch_in, :punch_out, :created_at, :updated_at
json.url timeclock_url(timeclock, format: :json)
