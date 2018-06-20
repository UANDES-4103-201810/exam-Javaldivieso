class PizzaordersController < ApplicationController
  before_action :set_pizzaorder, only: [:show, :edit, :update, :destroy]

  # GET /pizzaorders
  # GET /pizzaorders.json
  def index
    @pizzaorders = Pizzaorder.all
  end

  # GET /pizzaorders/1
  # GET /pizzaorders/1.json
  def show
  end

  # GET /pizzaorders/new
  def new
    @pizzaorder = Pizzaorder.new
  end

  # GET /pizzaorders/1/edit
  def edit
  end

  # POST /pizzaorders
  # POST /pizzaorders.json
  def create
    @pizzaorder = Pizzaorder.new(pizzaorder_params)

    respond_to do |format|
      if @pizzaorder.save
        format.html { redirect_to @pizzaorder, notice: 'Pizzaorder was successfully created.' }
        format.json { render :show, status: :created, location: @pizzaorder }
      else
        format.html { render :new }
        format.json { render json: @pizzaorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzaorders/1
  # PATCH/PUT /pizzaorders/1.json
  def update
    respond_to do |format|
      if @pizzaorder.update(pizzaorder_params)
        format.html { redirect_to @pizzaorder, notice: 'Pizzaorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizzaorder }
      else
        format.html { render :edit }
        format.json { render json: @pizzaorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzaorders/1
  # DELETE /pizzaorders/1.json
  def destroy
    @pizzaorder.destroy
    respond_to do |format|
      format.html { redirect_to pizzaorders_url, notice: 'Pizzaorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizzaorder
      @pizzaorder = Pizzaorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizzaorder_params
      params.require(:pizzaorder).permit(:order_id, :pizza_id)
    end
end
