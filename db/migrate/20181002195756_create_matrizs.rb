class CreateMatrizs < ActiveRecord::Migration[5.1]
  def change
    create_table :matrizs do |t|
      t.string :nome
      t.integer :curso_id
      t.integer :curriculo_id

      t.timestamps
    end
  end
end
