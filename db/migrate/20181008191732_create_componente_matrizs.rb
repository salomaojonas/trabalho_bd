class CreateComponenteMatrizs < ActiveRecord::Migration[5.1]
  def change
    create_table :componente_matrizs do |t|
      t.string :nome
      t.integer :matriz_id
      t.integer :disciplina_id

      t.timestamps
    end
  end
end
