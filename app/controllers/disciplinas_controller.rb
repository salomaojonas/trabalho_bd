class DisciplinasController < ApplicationController
  before_action :set_disciplina, only: [:show, :edit, :update, :destroy]

  # GET /disciplinas
  # GET /disciplinas.json
  def index
    @disciplinas = Disciplina.all
  end

	def incluir

		require 'google/apis/drive_v2'

		#raise params["grupo_id"].inspect
		grupo_id = params["grupo_id"].to_i
		puts Dir.pwd
		endereco = params["file"].tempfile.path
    FileUtils.cp(endereco, 'public/teste.xls')

    Spreadsheet.client_encoding = 'UTF-8'

		a = Spreadsheet.open(open("#{Rails.root}/public/teste.xls"))
		linhas = a.worksheet 0 

		contador_linhas = 4

		linhas.each do |linha|
		#	raise linha[0].inspect

			Disciplina.new(:nome => linha[0]).save
		
		
			contador_linhas = contador_linhas+1
		end



	end


  # GET /disciplinas/1
  # GET /disciplinas/1.json
  def show
  end

  # GET /disciplinas/new
  def new
    @disciplina = Disciplina.new
  end

  # GET /disciplinas/1/edit
  def edit
  end

  # POST /disciplinas
  # POST /disciplinas.json
  def create
    @disciplina = Disciplina.new(disciplina_params)

    respond_to do |format|
      if @disciplina.save
        format.html { redirect_to @disciplina, notice: 'Disciplina was successfully created.' }
        format.json { render :show, status: :created, location: @disciplina }
      else
        format.html { render :new }
        format.json { render json: @disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplinas/1
  # PATCH/PUT /disciplinas/1.json
  def update
    respond_to do |format|
      if @disciplina.update(disciplina_params)
        format.html { redirect_to @disciplina, notice: 'Disciplina was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplina }
      else
        format.html { render :edit }
        format.json { render json: @disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplinas/1
  # DELETE /disciplinas/1.json
  def destroy
    @disciplina.destroy
    respond_to do |format|
      format.html { redirect_to disciplinas_url, notice: 'Disciplina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplina
      @disciplina = Disciplina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplina_params
      params.require(:disciplina).permit(:nome, :curso_id)
    end
end
