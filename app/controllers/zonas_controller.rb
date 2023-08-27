class ZonasController < ApplicationController
  before_action :set_zona, only: %i[ show update destroy ]

  # GET /zonas
  def index
    @zonas = Zona.all

    render json: @zonas
  end

  # GET /zonas/1
  def show
    render json: @zona
  end

  def sumarAsesinato
    if params[:cantidad].to_i < 0
      render json: "No se puede sumar un numero negativo"
      return
    end
    @zona = Zona.find(params[:id])
    @zona.asesinatos += params[:cantidad].to_i
    @zona.crimenes += 1
    @zona.save
    render json: @zona
  end

  #Create the total of all the zonas and return each zona with the sum of asesinatos and crimenes
  def total
    @zonas = Zona.all
    @total = 0
    @zonas.each do |zona|
      @total += zona.asesinatos
      @total += zona.crimenes
    end
    render json: @total
  end


  # POST /zonas
  def create
    @zona = Zona.new(zona_params)

    if @zona.save
      render json: @zona, status: :created, location: @zona
    else
      render json: @zona.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zonas/1
  def update
    if @zona.update(zona_params)
      render json: @zona
    else
      render json: @zona.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zonas/1
  def destroy
    @zona.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona
      @zona = Zona.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zona_params
      params.require(:zona).permit(:nombre, :asesinatos, :crimenes)
    end
end
