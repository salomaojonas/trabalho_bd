class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.integer :curriculo_id

      t.timestamps
    end
  end
end
