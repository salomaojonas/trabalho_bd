class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :nome
      t.integer :departamento_id
      t.string :area_atuacao
      t.integer :ano_ingresso

      t.timestamps
    end
  end
end
