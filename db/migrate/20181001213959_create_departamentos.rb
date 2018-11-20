class CreateDepartamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :departamentos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
