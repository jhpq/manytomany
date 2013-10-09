class MastsController < ApplicationController
  before_action :set_mast, only: [:show, :edit, :update, :destroy]

  # GET /masts
  # GET /masts.json
  def index
    @masts = Mast.all
  end

  # GET /masts/1
  # GET /masts/1.json
  def show
  end

  # GET /masts/new
  def new
    @mast = Mast.new
  end

  # GET /masts/1/edit
  def edit
  end

  # POST /masts
  # POST /masts.json
  def create
    @mast = Mast.new(mast_params)

    respond_to do |format|
      if @mast.save
        format.html { redirect_to @mast, notice: 'Mast was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mast }
      else
        format.html { render action: 'new' }
        format.json { render json: @mast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masts/1
  # PATCH/PUT /masts/1.json
  def update
    respond_to do |format|
      if @mast.update(mast_params)
        format.html { redirect_to @mast, notice: 'Mast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masts/1
  # DELETE /masts/1.json
  def destroy
    @mast.destroy
    respond_to do |format|
      format.html { redirect_to masts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mast
      @mast = Mast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mast_params
      params.require(:mast).permit(:name, :)
    end
end
