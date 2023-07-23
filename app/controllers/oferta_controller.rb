class OfertaController < ApplicationController
  before_action :set_ofertum, only: %i[ show edit update destroy ]

  # GET /oferta or /oferta.json
  def index
    @oferta = Ofertum.all
  end

  # GET /oferta/1 or /oferta/1.json
  def show
  end

  # GET /oferta/new
  def new
    @ofertum = Ofertum.new
  end

  # GET /oferta/1/edit
  def edit
  end

  # POST /oferta or /oferta.json
  def create
    @ofertum = Ofertum.new(ofertum_params)

    respond_to do |format|
      if @ofertum.save
        format.html { redirect_to ofertum_url(@ofertum), notice: "Ofertum was successfully created." }
        format.json { render :show, status: :created, location: @ofertum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferta/1 or /oferta/1.json
  def update
    respond_to do |format|
      if @ofertum.update(ofertum_params)
        format.html { redirect_to ofertum_url(@ofertum), notice: "Ofertum was successfully updated." }
        format.json { render :show, status: :ok, location: @ofertum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta/1 or /oferta/1.json
  def destroy
    @ofertum.destroy

    respond_to do |format|
      format.html { redirect_to oferta_url, notice: "Ofertum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofertum
      @ofertum = Ofertum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ofertum_params
      params.require(:ofertum).permit(:titulo, :salario, :description)
    end
end
