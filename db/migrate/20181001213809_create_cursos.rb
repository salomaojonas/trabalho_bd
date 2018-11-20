class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.integer :departamento_id
      t.integer :matriz_curricular_id

      t.timestamps null: false
    end
  end
end
