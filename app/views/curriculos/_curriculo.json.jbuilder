json.extract! curriculo, :id, :nome, :curso_id, :matriz_id, :disciplina_id, :created_at, :updated_at
json.url curriculo_url(curriculo, format: :json)
