class TimeclocksController < ApplicationController
  before_action :set_timeclock, only: %i[ show edit update destroy ]

  # GET /timeclocks or /timeclocks.json
  def index
    @timeclocks = Timeclock.all
  end

  # GET /timeclocks/1 or /timeclocks/1.json
  def show
  end

  # GET /timeclocks/new
  def new
    @timeclock = Timeclock.new
  end

  # GET /timeclocks/1/edit
  def edit
  end

  # POST /timeclocks or /timeclocks.json
  def create
    @timeclock = Timeclock.new(timeclock_params)

    respond_to do |format|
      if @timeclock.save
        format.html { redirect_to timeclock_url(@timeclock), notice: "Timeclock was successfully created." }
        format.json { render :show, status: :created, location: @timeclock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timeclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timeclocks/1 or /timeclocks/1.json
  def update
    respond_to do |format|
      if @timeclock.update(timeclock_params)
        format.html { redirect_to timeclock_url(@timeclock), notice: "Timeclock was successfully updated." }
        format.json { render :show, status: :ok, location: @timeclock }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timeclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeclocks/1 or /timeclocks/1.json
  def destroy
    @timeclock.destroy

    respond_to do |format|
      format.html { redirect_to timeclocks_url, notice: "Timeclock was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeclock
      @timeclock = Timeclock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timeclock_params
      params.require(:timeclock).permit(:worker_id_id, :punch_in, :punch_out)
    end
end
