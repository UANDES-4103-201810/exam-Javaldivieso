class RepicesController < ApplicationController
  before_action :set_repice, only: [:show, :edit, :update, :destroy]

  # GET /repices
  # GET /repices.json
  def index
    @repices = Repice.all
  end

  # GET /repices/1
  # GET /repices/1.json
  def show
  end

  # GET /repices/new
  def new
    @repice = Repice.new
  end

  # GET /repices/1/edit
  def edit
  end

  # POST /repices
  # POST /repices.json
  def create
    @repice = Repice.new(repice_params)

    respond_to do |format|
      if @repice.save
        format.html { redirect_to @repice, notice: 'Repice was successfully created.' }
        format.json { render :show, status: :created, location: @repice }
      else
        format.html { render :new }
        format.json { render json: @repice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repices/1
  # PATCH/PUT /repices/1.json
  def update
    respond_to do |format|
      if @repice.update(repice_params)
        format.html { redirect_to @repice, notice: 'Repice was successfully updated.' }
        format.json { render :show, status: :ok, location: @repice }
      else
        format.html { render :edit }
        format.json { render json: @repice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repices/1
  # DELETE /repices/1.json
  def destroy
    @repice.destroy
    respond_to do |format|
      format.html { redirect_to repices_url, notice: 'Repice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repice
      @repice = Repice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repice_params
      params.require(:repice).permit(:Repiceingredient_id, :price)
    end
end
