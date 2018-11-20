class CreateMatriculaTurmaNumeros < ActiveRecord::Migration[5.1]
  def change
    create_table :matricula_turma_numeros do |t|
      t.integer :matricula_turma_id
      t.integer :n1
      t.integer :n2
      t.integer :final
      t.boolean :aprovado

      t.timestamps
    end
  end
end
