class CreateDisciplinas < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :curso_id

      t.timestamps
    end
  end
end
