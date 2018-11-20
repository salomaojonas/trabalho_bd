class CreateAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.integer :curso_id
      t.integer :ano_ingresso

      t.timestamps
    end
  end
end
