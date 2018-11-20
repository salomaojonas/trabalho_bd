# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181119142943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.integer "curso_id"
    t.integer "ano_ingresso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "componente_matrizs", force: :cascade do |t|
    t.string "nome"
    t.integer "matriz_id"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curriculos", force: :cascade do |t|
    t.string "nome"
    t.integer "curso_id"
    t.integer "matriz_id"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.integer "departamento_id"
    t.integer "matriz_curricular_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matricula_turma_numeros", force: :cascade do |t|
    t.integer "matricula_turma_id"
    t.integer "n1"
    t.integer "n2"
    t.integer "final"
    t.boolean "aprovado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matricula_turmas", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "turma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matrizs", force: :cascade do |t|
    t.string "nome"
    t.integer "curso_id"
    t.integer "curriculo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.integer "departamento_id"
    t.string "area_atuacao"
    t.integer "ano_ingresso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "nome"
    t.integer "componente_matriz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "professor_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
