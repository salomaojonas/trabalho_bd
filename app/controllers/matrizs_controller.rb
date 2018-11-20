class MatrizsController < ApplicationController
  before_action :set_matriz, only: [:show, :edit, :update, :destroy]

  # GET /matrizs
  # GET /matrizs.json
  def index
    @matrizs = Matriz.all
  end

  # GET /matrizs/1
  # GET /matrizs/1.json
  def show
  end

  # GET /matrizs/new
  def new
    @matriz = Matriz.new
  end

  # GET /matrizs/1/edit
  def edit
  end

  # POST /matrizs
  # POST /matrizs.json
  def create
    @matriz = Matriz.new(matriz_params)

    respond_to do |format|
      if @matriz.save
        format.html { redirect_to @matriz, notice: 'Matriz was successfully created.' }
        format.json { render :show, status: :created, location: @matriz }
      else
        format.html { render :new }
        format.json { render json: @matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrizs/1
  # PATCH/PUT /matrizs/1.json
  def update
    respond_to do |format|
      if @matriz.update(matriz_params)
        format.html { redirect_to @matriz, notice: 'Matriz was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriz }
      else
        format.html { render :edit }
        format.json { render json: @matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrizs/1
  # DELETE /matrizs/1.json
  def destroy
    @matriz.destroy
    respond_to do |format|
      format.html { redirect_to matrizs_url, notice: 'Matriz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriz
      @matriz = Matriz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriz_params
      params.require(:matriz).permit(:nome, :curso_id, :curriculo_id)
    end
end
