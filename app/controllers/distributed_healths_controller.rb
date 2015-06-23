class DistributedHealthsController < ApplicationController
  before_action :set_distributed_health, only: [:show, :edit, :update, :destroy]

  # GET /distributed_healths
  # GET /distributed_healths.json
  def index
    @distributed_healths = DistributedHealth.all
  end

  # GET /distributed_healths/1
  # GET /distributed_healths/1.json
  def show
  end

  # GET /distributed_healths/new
  def new
    @distributed_health = DistributedHealth.new
  end

  # GET /distributed_healths/1/edit
  def edit
  end

  # POST /distributed_healths
  # POST /distributed_healths.json
  def create
    @distributed_health = DistributedHealth.new(distributed_health_params)

    respond_to do |format|
      if @distributed_health.save
        format.html { redirect_to @distributed_health, notice: 'Distributed health was successfully created.' }
        format.json { render :show, status: :created, location: @distributed_health }
      else
        format.html { render :new }
        format.json { render json: @distributed_health.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distributed_healths/1
  # PATCH/PUT /distributed_healths/1.json
  def update
    respond_to do |format|
      if @distributed_health.update(distributed_health_params)
        format.html { redirect_to @distributed_health, notice: 'Distributed health was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributed_health }
      else
        format.html { render :edit }
        format.json { render json: @distributed_health.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributed_healths/1
  # DELETE /distributed_healths/1.json
  def destroy
    @distributed_health.destroy
    respond_to do |format|
      format.html { redirect_to distributed_healths_url, notice: 'Distributed health was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distributed_health
      @distributed_health = DistributedHealth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distributed_health_params
      params.require(:distributed_health).permit(:ph, :chlorine, :magnified_Link, :taste, :odor, :temperature, :mercury, :hardness, :lat, :long)
    end
end
