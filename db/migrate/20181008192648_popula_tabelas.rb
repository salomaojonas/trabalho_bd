class PopulaTabelas < ActiveRecord::Migration[5.1]
  def change

		#########################
		# Gerando dados prévios #
		#########################

		detel = Departamento.new
		detel.nome = "Departamento de Telecomunicações"
		detel.save

		engcomp = Curso.new
		engcomp.nome = "Engenharia de Computação"

		engcomp.departamento_id = detel.id

		Departamento.find_by_sql("
			INSERT INTO departamentos(nome, created_at, updated_at)
			VALUES('#{detel.nome}', now()::timestamp, now()::timestamp )
 		")
		
		Curso.find_by_sql("
			INSERT INTO cursos(nome, departamento_id, created_at, updated_at)
			VALUES('#{engcomp.nome}', '#{engcomp.departamento_id}', now()::timestamp, now()::timestamp )
		")

		matriz_engcomp = Matriz.new
		matriz_engcomp.nome = "#{engcomp.nome} - 2018.2"
		matriz_engcomp.curso_id = Curso.maximum(:id)

		Matriz.find_by_sql("
			INSERT INTO matrizs(nome, curso_id, created_at, updated_at)
			VALUES('#{matriz_engcomp.nome}', '#{matriz_engcomp.curso_id}', now()::timestamp, now()::timestamp )
		")

		for j in 1..7
			Curriculo.new(:nome=> "#{engcomp.nome}-#{j}", :matriz_id => Matriz.maximum(:id), :disciplina_id => j).save
			ComponenteMatriz.find_by_sql("
				INSERT INTO componente_matrizs(nome, matriz_id, disciplina_id, created_at, updated_at)
				VALUES('#{engcomp.nome}-#{j}', '#{Matriz.maximum(:id)}', '#{j}', now()::timestamp, now()::timestamp )
			")
		end
		####

  end
end
