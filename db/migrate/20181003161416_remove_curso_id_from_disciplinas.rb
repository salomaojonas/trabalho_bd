class RemoveCursoIdFromDisciplinas < ActiveRecord::Migration[5.1]
  def change
    remove_column :disciplinas, :curso_id, :integer
  end
end
