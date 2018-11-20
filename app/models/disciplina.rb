class Disciplina < ApplicationRecord
	belongs_to :curriculo
	belongs_to :componente_matriz
end
