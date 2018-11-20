json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nome, :departamento_id, :matriz_curricular_id
  json.url curso_url(curso, format: :json)
end
