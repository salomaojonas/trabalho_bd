class TurmasController < ApplicationController
  before_action :set_turma, only: [:show, :edit, :update, :destroy]

  # GET /turmas
  # GET /turmas.json
  def index
    @turmas = Turma.all
		@turma = Turma.new
		@professores = Professor.all
		@componentes = ComponenteMatriz.all

  end

  # GET /turmas/1
  # GET /turmas/1.json
  def show
  end

  # GET /turmas/new
  def new
    @turma = Turma.new

		@professores = Professor.all
		@componentes = ComponenteMatriz.all

  end

  # GET /turmas/1/edit
  def edit
    @turmas = Turma.all
		@professores = Professor.all
		@componentes = ComponenteMatriz.all

  end

  # POST /turmas
  # POST /turmas.json
  def create
    @turma = Turma.new(turma_params)
	#	raise params.inspect
		timestamp = Time.now
	#	raise @turma.curriculo_id.inspect
		zoned_time = Time.now
		unzoned_time = Time.new(zoned_time.strftime("%Y").to_i,zoned_time.strftime("%m").to_i,zoned_time.strftime("%d").to_i,zoned_time.strftime("%H").to_i,zoned_time.strftime("%M").to_i,zoned_time.strftime("%S").to_i,"+00:00")

	##	raise @turma.componente_matriz_id.to_i.inspect
		# INSERT

		Turma.find_by_sql("
			INSERT INTO turmas(nome, professor_id, componente_matriz_id, created_at, updated_at)
			VALUES('#{@turma.nome}',#{@turma.professor_id.to_i}, #{@turma.componente_matriz_id.to_i}, now()::timestamp, now()::timestamp )
		")

		@turmas = Turma.all
    respond_to do |f|
			f.html  { redirect_to @turma, notice: 'Turma criada com sucesso.' }
      f.json { render :show, status: :ok, location: @relatorio_pastor }
  end
  end

  # PATCH/PUT /turmas/1
  # PATCH/PUT /turmas/1.json
  def update
    respond_to do |format|
      if @turma.update(turma_params)
        format.html { redirect_to @turma, notice: 'Turma atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @turma }
      else
        format.html { render :edit }
        format.json { render json: @turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turmas/1
  # DELETE /turmas/1.json
  def destroy
    @turma.destroy
    respond_to do |format|
      format.html { redirect_to turmas_url, notice: 'Turma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turma
      @turma = Turma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turma_params
      params.require(:turma).permit(:nome,:professor_id, :componente_matriz_id)
    end
end
