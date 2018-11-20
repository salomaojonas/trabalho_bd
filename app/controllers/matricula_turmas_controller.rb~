class MatriculaTurmasController < ApplicationController
  before_action :set_matricula_turma, only: [:show, :edit, :update, :destroy]

  # GET /matricula_turmas
  # GET /matricula_turmas.json
  def index
		@matricula_turma = MatriculaTurma.new
    @matriculas = MatriculaTurma.all
		@alunos = Aluno.all
		@turmas = Turma.all

  end

  # GET /matricula_turmas/1
  # GET /matricula_turmas/1.json
  def show
  end

  # GET /matricula_turmas/new
  def new
		@alunos = Aluno.all
		@turmas = Turma.all

    @matricula_turma = MatriculaTurma.new
  end

  # GET /matricula_turmas/1/edit
  def edit
    @matriculas = MatriculaTurma.all
		@alunos = Aluno.all
		@turmas = Turma.all

  end

  # POST /matricula_turmas
  # POST /matricula_turmas.json
  def create



    @matricula_turma = MatriculaTurma.new(matricula_turma_params)
		@matriculas = MatriculaTurma.all
		if @matricula_turma.save
    	respond_to do |f|
				f.html { redirect_to @matricula_turma, notice: 'Aluno Matriculado com sucesso.' }
		    f.json { render :show, status: :ok, location:@matricula_turma }
			end
		end
  end

  # PATCH/PUT /matricula_turmas/1
  # PATCH/PUT /matricula_turmas/1.json
  def update
    respond_to do |format|
      if @matricula_turma.update(matricula_turma_params)
        format.html { redirect_to @matricula_turma, notice: 'Aluno matriculado com sucesso.' }
        format.json { render :show, status: :ok, location: @matricula_turma }
      else
        format.html { render :edit }
        format.json { render json: @matricula_turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matricula_turmas/1
  # DELETE /matricula_turmas/1.json
  def destroy
    @matricula_turma.destroy
    respond_to do |format|
      format.html { redirect_to matricula_turmas_url, notice: 'Matricula turma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matricula_turma
      @matricula_turma = MatriculaTurma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matricula_turma_params
      params.require(:matricula_turma).permit(:aluno_id, :turma_id)
    end
end
