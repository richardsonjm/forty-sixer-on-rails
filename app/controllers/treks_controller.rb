class TreksController < ApplicationController
  before_action :set_trek, only: [:show, :edit, :update, :destroy]
  before_action :set_mountains, only: [:show]

  # GET /treks
  # GET /treks.json
  def index
    @treks = Trek.all
  end

  # GET /treks/1
  # GET /treks/1.json
  def show
  end

  # GET /treks/new
  def new
    @trek = Trek.new
  end

  # GET /treks/1/edit
  def edit
  end

  # POST /treks
  # POST /treks.json
  def create
    @trek = Trek.new(trek_params)

    respond_to do |format|
      if @trek.save
        format.html { redirect_to @trek, notice: 'Trek was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trek }
      else
        format.html { render action: 'new' }
        format.json { render json: @trek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treks/1
  # PATCH/PUT /treks/1.json
  def update
    respond_to do |format|
      if @trek.update(trek_params)
        format.html { redirect_to @trek, notice: 'Trek was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treks/1
  # DELETE /treks/1.json
  def destroy
    @trek.destroy
    respond_to do |format|
      format.html { redirect_to treks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trek
      @trek = Trek.find(params[:id])
    end

    def set_mountains
      @mountains = Mountain.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trek_params
      params.require(:trek).permit(:name, :url, :diff, :distance, :duration, :desc)
    end
end
