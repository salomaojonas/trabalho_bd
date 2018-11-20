class CreateMatriculaTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :matricula_turmas do |t|
      t.integer :aluno_id
      t.integer :turma_id

      t.timestamps
    end
  end
end
