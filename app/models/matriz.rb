class Matriz < ApplicationRecord
	belongs_to :curso
	has_many :componente_matriz
end
