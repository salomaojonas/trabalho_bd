class CurriculosController < ApplicationController
  before_action :set_curriculo, only: [:show, :edit, :update, :destroy]

  # GET /curriculos
  # GET /curriculos.json
  def index
    @curriculos = Curriculo.all
  end

  # GET /curriculos/1
  # GET /curriculos/1.json
  def show
  end

  # GET /curriculos/new
  def new
    @curriculo = Curriculo.new
  end

  # GET /curriculos/1/edit
  def edit
  end

  # POST /curriculos
  # POST /curriculos.json
  def create
    @curriculo = Curriculo.new(curriculo_params)

    respond_to do |format|
      if @curriculo.save
        format.html { redirect_to @curriculo, notice: 'Curriculo was successfully created.' }
        format.json { render :show, status: :created, location: @curriculo }
      else
        format.html { render :new }
        format.json { render json: @curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculos/1
  # PATCH/PUT /curriculos/1.json
  def update
    respond_to do |format|
      if @curriculo.update(curriculo_params)
        format.html { redirect_to @curriculo, notice: 'Curriculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculo }
      else
        format.html { render :edit }
        format.json { render json: @curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculos/1
  # DELETE /curriculos/1.json
  def destroy
    @curriculo.destroy
    respond_to do |format|
      format.html { redirect_to curriculos_url, notice: 'Curriculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculo
      @curriculo = Curriculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculo_params
      params.require(:curriculo).permit(:nome, :curso_id, :matriz_id, :disciplina_id)
    end
end
