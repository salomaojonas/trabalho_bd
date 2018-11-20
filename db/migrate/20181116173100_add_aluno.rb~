class AddAluno < ActiveRecord::Migration[5.1]
  def change

		Aluno.find_by_sql("
			INSERT INTO alunos(nome, curso_id, ano_ingresso, created_at, updated_at)
			VALUES('Luanna Maria', 42, 2018, now()::timestamp, now()::timestamp )
		")

  end
end
