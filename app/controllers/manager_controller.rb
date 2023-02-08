class ManagerController < ApplicationController
  def index
    @workers = Worker.all
  end
end
