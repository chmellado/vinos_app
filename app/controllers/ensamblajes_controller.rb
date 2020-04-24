class EnsamblajesController < ApplicationController
  before_action :set_ensamblaje, only: [:show, :edit, :update, :destroy]

  # GET /ensamblajes
  # GET /ensamblajes.json
  def index
    @ensamblajes = Ensamblaje.all
  end

  # GET /ensamblajes/1
  # GET /ensamblajes/1.json
  def show
  end

  # GET /ensamblajes/new
  def new
    @ensamblaje = Ensamblaje.new
  end

  # GET /ensamblajes/1/edit
  def edit
  end

  # POST /ensamblajes
  # POST /ensamblajes.json
  def create
    @ensamblaje = Ensamblaje.new(ensamblaje_params)

    respond_to do |format|
      if @ensamblaje.save
        format.html { redirect_to @ensamblaje, notice: 'Ensamblaje was successfully created.' }
        format.json { render :show, status: :created, location: @ensamblaje }
      else
        format.html { render :new }
        format.json { render json: @ensamblaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensamblajes/1
  # PATCH/PUT /ensamblajes/1.json
  def update
    respond_to do |format|
      if @ensamblaje.update(ensamblaje_params)
        format.html { redirect_to @ensamblaje, notice: 'Ensamblaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @ensamblaje }
      else
        format.html { render :edit }
        format.json { render json: @ensamblaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensamblajes/1
  # DELETE /ensamblajes/1.json
  def destroy
    @ensamblaje.destroy
    respond_to do |format|
      format.html { redirect_to ensamblajes_url, notice: 'Ensamblaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ensamblaje
      @ensamblaje = Ensamblaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ensamblaje_params
      params.fetch(:ensamblaje, {})
    end
end
