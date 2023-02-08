class TimeclockController < ApplicationController
  def index
    @worker = Worker.find_by(id: @worker_id)
    @workers = Worker.all
  end

  def new; end

  def punch_in
    @worker_id = params[:worker_id]
    @worker = Worker.find_by(id: @worker_id)

    return unless @worker.present?

    if @worker.status_active
      @worker.update(status_active: false, punch_out_time: Time.current)
    else
      @worker.update(status_active: true, punch_in_time: Time.current)
    end
  end
end
