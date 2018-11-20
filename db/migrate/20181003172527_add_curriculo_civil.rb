class AddCurriculoCivil < ActiveRecord::Migration[5.1]
  def change

		#########################
		# Gerando dados prévios #
		#########################

		departamento = Departamento.new
		departamento.nome = "Departamento de Construção Civil"
		departamento.save
		
		curso = Curso.new
		curso.nome = "Engenharia Civil"
		curso.departamento_id = departamento.id
		curso.save
		
		matriz = Matriz.new
		matriz.nome = "#{curso.nome} - 2018.2"
		matriz.curso_id = curso.id
		matriz.save

		for i in 108..162
			Curriculo.new(:nome=> "#{curso.nome}-#{i}", :matriz_id => matriz.id, :disciplina_id => i).save
		end


		detel = Departamento.new
		detel.nome = "Departamento de Telecomunicações"
		detel.save
		
		engcomp = Curso.new
		engcomp.nome = "Engenharia de Computação"
		engcomp.departamento_id = detel.id
		engcomp.save
		
		matriz_engcomp = Matriz.new
		matriz_engcomp.nome = "#{engcomp.nome} - 2018.2"
		matriz_engcomp.curso_id = engcomp.id
		matriz_engcomp.save

		for j in 1..59
			Curriculo.new(:nome=> "#{engcomp.nome}-#{j}", :matriz_id => matriz_engcomp.id, :disciplina_id => j).save
		end


		engtelecom = Curso.new
		engtelecom.nome = "Engenharia de Telecomunicações"
		engtelecom.departamento_id = detel.id
		engtelecom.save
		
		matriz_engtelecom = Matriz.new
		matriz_engtelecom.nome = "#{engtelecom.nome} - 2018.2"
		matriz_engtelecom.curso_id = engtelecom.id
		matriz_engtelecom.save

		for k in 60..107
				Curriculo.new(:nome=> "#{matriz_engtelecom.nome}-#{k}", :matriz_id => matriz_engtelecom.id, :disciplina_id => k).save
			end
		end

end
