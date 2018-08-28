class PsostavsController < ApplicationController
  before_action :set_psostav, only: [:show, :edit, :update, :destroy]

  # GET /psostavs
  # GET /psostavs.json
  def index
    @psostavs = Psostav.all
    respond_to do |format|
        format.html
        format.xlsx 
      end
  end

  # GET /psostavs/1
  # GET /psostavs/1.json
  def show
    
  end

  # GET /psostavs/new
  def new
    @psostav = Psostav.new
  end

  # GET /psostavs/1/edit
  def edit
  end

  # POST /psostavs
  # POST /psostavs.json
  def create
    @psostav = Psostav.new(psostav_params)

    
    if @psostav.save
      redirect_to psostavs_path(:university => @psostav.university)
    else
      redirect_to new_psostavs_path(:university => @psostav.university)
    end
  end

  # PATCH/PUT /psostavs/1
  # PATCH/PUT /psostavs/1.json
  def update
    respond_to do |format|
      if @psostav.update(psostav_params)
        format.html { redirect_to @psostav, notice: 'Psostav was successfully updated.' }
        format.json { render :show, status: :ok, location: @psostav }
      else
        format.html { render :edit }
        format.json { render json: @psostav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psostavs/1
  # DELETE /psostavs/1.json
  def destroy
    @psostav.destroy
    respond_to do |format|
      format.html { redirect_to psostavs_url, notice: 'Psostav was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psostav
      @psostav = Psostav.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psostav_params
      params.require(:psostav).permit(:university, :fio, :dis, :vid, :opit, :kolvo, :mesto, :shtat, :sostav)
    end
end
