class SubsoftwaresController < ApplicationController
  before_action :set_subsoftware, only: %i[ show edit update destroy ]

  # GET /subsoftwares or /subsoftwares.json
  def index
    @subsoftwares = Subsoftware.all
  end

  # GET /subsoftwares/1 or /subsoftwares/1.json
  def show
  end

  # GET /subsoftwares/new
  def new
    @subsoftware = Subsoftware.new
  end

  # GET /subsoftwares/1/edit
  def edit
  end

  # POST /subsoftwares or /subsoftwares.json
  def create
    @subsoftware = Subsoftware.new(subsoftware_params)

    respond_to do |format|
      if @subsoftware.save
        format.html { redirect_to subsoftware_url(@subsoftware), notice: "Subsoftware was successfully created." }
        format.json { render :show, status: :created, location: @subsoftware }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subsoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subsoftwares/1 or /subsoftwares/1.json
  def update
    respond_to do |format|
      if @subsoftware.update(subsoftware_params)
        format.html { redirect_to subsoftware_url(@subsoftware), notice: "Subsoftware was successfully updated." }
        format.json { render :show, status: :ok, location: @subsoftware }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subsoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsoftwares/1 or /subsoftwares/1.json
  def destroy
    @subsoftware.destroy

    respond_to do |format|
      format.html { redirect_to subsoftwares_url, notice: "Subsoftware was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsoftware
      @subsoftware = Subsoftware.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subsoftware_params
      params.require(:subsoftware).permit(:name, :esats_id, :version, :standard_scope, :software_id)
    end
end
