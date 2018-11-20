class ComponenteMatriz < ApplicationRecord

	belongs_to :matriz
	belongs_to :disciplina
	has_many :turma

	def self.deletar(id)
		ComponenteMatriz.find_by_sql("
			DELETE FROM projeto_final_bd.componente_matrizs cm
		  WHERE cm.id = #{id}
		")
	end

	def self.listar_discipinas

	 ComponenteMatriz.find_by_sql("
		select cm.* from projeto_final_bd.cursos c 
		inner join projeto_final_bd.matrizs m on m.curso_id = c.id 
		inner join projeto_final_bd.componente_matrizs cm on m.id = cm.matriz_id
		inner join projeto_final_bd.disciplinas d on d.id = cm.disciplina_id
		where c.id = 42
		order by d.nome ASC
	")	

	end

end
