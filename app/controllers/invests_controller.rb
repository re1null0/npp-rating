class InvestsController < ApplicationController
  before_action :set_invest, only: [:show, :edit, :update, :destroy]

  # GET /invests
  # GET /invests.json
  def index
    @invests = Invest.all
    respond_to do |format|
        format.html
        format.xlsx 
      end
  end

  # GET /invests/1
  # GET /invests/1.json
  def show
    
  end

  # GET /invests/new
  def new
    @invest = Invest.new
  end

  # GET /invests/1/edit
  def edit
  end

  # POST /investsf
  # POST /invests.json
  def create
    @invest = Invest.new(invest_params)

    if @invest.save
      redirect_to invests_path(:university => @invest.university)
    else
      redirect_to new_invest_path(:university => @invest.university)
    end
    
  end

  # PATCH/PUT /invests/1
  # PATCH/PUT /invests/1.json
  def update
    respond_to do |format|
      if @invest.update(invest_params)
        format.html { redirect_to @invest, notice: 'Invest was successfully updated.' }
        format.json { render :show, status: :ok, location: @invest }
      else
        format.html { render :edit }
        format.json { render json: @invest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invests/1
  # DELETE /invests/1.json
  def destroy
    @invest.destroy
    respond_to do |format|
      format.html { redirect_to invests_url, notice: 'Invest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invest
      @invest = Invest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invest_params
      params.require(:invest).permit(:university, :zayav1, :year1, :doc1, :typec, :name)
    end
end
