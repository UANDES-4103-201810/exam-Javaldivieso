class RepiceingredientesController < ApplicationController
  before_action :set_repiceingrediente, only: [:show, :edit, :update, :destroy]

  # GET /repiceingredientes
  # GET /repiceingredientes.json
  def index
    @repiceingredientes = Repiceingrediente.all
  end

  # GET /repiceingredientes/1
  # GET /repiceingredientes/1.json
  def show
  end

  # GET /repiceingredientes/new
  def new
    @repiceingrediente = Repiceingrediente.new
  end

  # GET /repiceingredientes/1/edit
  def edit
  end

  # POST /repiceingredientes
  # POST /repiceingredientes.json
  def create
    @repiceingrediente = Repiceingrediente.new(repiceingrediente_params)

    respond_to do |format|
      if @repiceingrediente.save
        format.html { redirect_to @repiceingrediente, notice: 'Repiceingrediente was successfully created.' }
        format.json { render :show, status: :created, location: @repiceingrediente }
      else
        format.html { render :new }
        format.json { render json: @repiceingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repiceingredientes/1
  # PATCH/PUT /repiceingredientes/1.json
  def update
    respond_to do |format|
      if @repiceingrediente.update(repiceingrediente_params)
        format.html { redirect_to @repiceingrediente, notice: 'Repiceingrediente was successfully updated.' }
        format.json { render :show, status: :ok, location: @repiceingrediente }
      else
        format.html { render :edit }
        format.json { render json: @repiceingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repiceingredientes/1
  # DELETE /repiceingredientes/1.json
  def destroy
    @repiceingrediente.destroy
    respond_to do |format|
      format.html { redirect_to repiceingredientes_url, notice: 'Repiceingrediente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repiceingrediente
      @repiceingrediente = Repiceingrediente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repiceingrediente_params
      params.require(:repiceingrediente).permit(:ingredient_id, :repice_id)
    end
end
