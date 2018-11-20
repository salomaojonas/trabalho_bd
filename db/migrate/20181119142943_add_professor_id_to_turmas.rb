class AddProfessorIdToTurmas < ActiveRecord::Migration[5.1]
  def change
		add_column :turmas, :professor_id, :integer
  end
end
