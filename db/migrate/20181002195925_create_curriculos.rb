class CreateCurriculos < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculos do |t|
      t.string :nome
      t.integer :curso_id
      t.integer :matriz_id
      t.integer :disciplina_id

      t.timestamps
    end
  end
end
