json.extract! aluno, :id, :nome, :curso_id, :ano_ingresso, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
