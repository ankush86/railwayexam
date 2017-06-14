class BeverageStoresController < ApplicationController
  before_action :set_beverage_store, only: [:show, :edit, :update, :destroy]

  # GET /beverage_stores
  # GET /beverage_stores.json
  def index
    @beverage_stores = BeverageStore.all
  end

  # GET /beverage_stores/1
  # GET /beverage_stores/1.json
  def show
  end

  # GET /beverage_stores/new
  def new
    @beverage_store = BeverageStore.new
  end

  # GET /beverage_stores/1/edit
  def edit
  end

  # POST /beverage_stores
  # POST /beverage_stores.json
  def create
    @beverage_store = BeverageStore.new(beverage_store_params)

    respond_to do |format|
      if @beverage_store.save
        format.html { redirect_to @beverage_store, notice: 'Beverage store was successfully created.' }
        format.json { render :show, status: :created, location: @beverage_store }
      else
        format.html { render :new }
        format.json { render json: @beverage_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beverage_stores/1
  # PATCH/PUT /beverage_stores/1.json
  def update
    respond_to do |format|
      if @beverage_store.update(beverage_store_params)
        format.html { redirect_to @beverage_store, notice: 'Beverage store was successfully updated.' }
        format.json { render :show, status: :ok, location: @beverage_store }
      else
        format.html { render :edit }
        format.json { render json: @beverage_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beverage_stores/1
  # DELETE /beverage_stores/1.json
  def destroy
    @beverage_store.destroy
    respond_to do |format|
      format.html { redirect_to beverage_stores_url, notice: 'Beverage store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beverage_store
      @beverage_store = BeverageStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beverage_store_params
      params.require(:beverage_store).permit(:title, :info, :price,:station_id)
    end
end
