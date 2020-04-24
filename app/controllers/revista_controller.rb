class RevistaController < ApplicationController
  before_action :set_revistum, only: [:show, :edit, :update, :destroy]

  # GET /revista
  # GET /revista.json
  def index
    @revista = Revistum.all
  end

  # GET /revista/1
  # GET /revista/1.json
  def show
  end

  # GET /revista/new
  def new
    @revistum = Revistum.new
  end

  # GET /revista/1/edit
  def edit
  end

  # POST /revista
  # POST /revista.json
  def create
    @revistum = Revistum.new(revistum_params)

    respond_to do |format|
      if @revistum.save
        format.html { redirect_to @revistum, notice: 'Revistum was successfully created.' }
        format.json { render :show, status: :created, location: @revistum }
      else
        format.html { render :new }
        format.json { render json: @revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revista/1
  # PATCH/PUT /revista/1.json
  def update
    respond_to do |format|
      if @revistum.update(revistum_params)
        format.html { redirect_to @revistum, notice: 'Revistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @revistum }
      else
        format.html { render :edit }
        format.json { render json: @revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revista/1
  # DELETE /revista/1.json
  def destroy
    @revistum.destroy
    respond_to do |format|
      format.html { redirect_to revista_url, notice: 'Revistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revistum
      @revistum = Revistum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def revistum_params
      params.require(:revistum).permit(:name, :enologos_id)
    end
end
