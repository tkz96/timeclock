class TimeclockController < ApplicationController
  def index
    @workers = Worker.all
  end
end
