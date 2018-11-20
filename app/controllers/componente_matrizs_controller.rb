class ComponenteMatrizsController < ApplicationController
  before_action :set_componente_matriz, only: [:show, :edit, :update, :destroy]

  # GET /componente_matrizs
  # GET /componente_matrizs.json
  def index
    @disciplinas = ComponenteMatriz.listar_discipinas
		@componente_matriz = ComponenteMatriz.new
		@componentes = ComponenteMatriz.all
		@turmas = Turma.all
    @turma = Turma.new
		@matrizes = Matriz.all
		@alunos = Aluno.all
  end

  # GET /componente_matrizs/1
  # GET /componente_matrizs/1.json
  def show
  end

  # GET /componente_matrizs/new
  def new
		@matrizes = Matriz.all
		@alunos = Aluno.all
    @disciplinas = ComponenteMatriz.listar_discipinas
    @componente_matriz = ComponenteMatriz.new
  end

  # GET /componente_matrizs/1/edit
  def edit
   @disciplinas = ComponenteMatriz.listar_discipinas
		@componentes = ComponenteMatriz.all
		@turmas = Turma.all
    @turma = Turma.new
		@matrizes = Matriz.all
  end

  # POST /componente_matrizs
  # POST /componente_matrizs.json
  def create
    @componente_matriz = ComponenteMatriz.new(componente_matriz_params)
		@componentes = ComponenteMatriz.all

    respond_to do |format|
      if @componente_matriz.save
        format.html { redirect_to @componente_matriz, notice: 'Componente criado com sucesso.' }
        format.json { render :show, status: :created, location: @componente_matriz }
      else
        format.html { render :new }
        format.json { render json: @componente_matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componente_matrizs/1
  # PATCH/PUT /componente_matrizs/1.json
  def update
    respond_to do |format|
      if @componente_matriz.update(componente_matriz_params)
        format.html { redirect_to @componente_matriz, notice: 'Componente atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @componente_matriz }
      else
        format.html { render :edit }
        format.json { render json: @componente_matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componente_matrizs/1
  # DELETE /componente_matrizs/1.json
  def destroy
		ComponenteMatriz.deletar(@componente_matriz.id)


    respond_to do |format|
      format.html { redirect_to componente_matrizs_url, notice: 'Componente matriz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente_matriz
      @componente_matriz = ComponenteMatriz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componente_matriz_params
      params.require(:componente_matriz).permit(:nome, :matriz_id, :disciplina_id)
    end
end
