class TimeclockController < ApplicationController
  def index
    @workers = Worker.all
    end
  def new
  end
  def punch_in
    @worker_id = params[:worker_id]
    @worker = Worker.find_by(id: @worker_id)

    if @worker.present?
      if !@worker.status_active
        @worker.update(status_active: true)
      else
        @worker.update(status_active: false)
      end
    end
  end
end
