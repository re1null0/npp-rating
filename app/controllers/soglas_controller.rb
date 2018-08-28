class SoglasController < ApplicationController
  before_action :set_sogla, only: [:show, :edit, :update, :destroy]

  # GET /soglas
  # GET /soglas.json
  def index
    @soglas = Sogla.all
    respond_to do |format|
        format.html
        format.xlsx 
      end
  end

  # GET /soglas/1
  # GET /soglas/1.json
  def show
    
  end

  # GET /soglas/new
  def new
    @sogla = Sogla.new
  end

  # GET /soglas/1/edit
  def edit
  end

  # POST /soglas
  # POST /soglas.json
  def create
    @sogla = Sogla.new(sogla_params)


    if @sogla.save
      
      redirect_to soglas_path(:university => @sogla.university)
    else
      redirect_to new_soglas_path(:university => @sogla.university)
    end
    
  end

  # PATCH/PUT /soglas/1
  # PATCH/PUT /soglas/1.json
  def update
    respond_to do |format|
      if @sogla.update(sogla_params)
        format.html { redirect_to @sogla, notice: 'Sogla was successfully updated.' }
        format.json { render :show, status: :ok, location: @sogla }
      else
        format.html { render :edit }
        format.json { render json: @sogla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soglas/1
  # DELETE /soglas/1.json
  def destroy
    @sogla.destroy
    respond_to do |format|
      format.html { redirect_to soglas_url, notice: 'Sogla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sogla
      @sogla = Sogla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sogla_params
      params.require(:sogla).permit(:university, :soglas, :name, :vid, :doc, :date)
    end
end
