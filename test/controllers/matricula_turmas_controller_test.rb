require 'test_helper'

class MatriculaTurmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matricula_turma = matricula_turmas(:one)
  end

  test "should get index" do
    get matricula_turmas_url
    assert_response :success
  end

  test "should get new" do
    get new_matricula_turma_url
    assert_response :success
  end

  test "should create matricula_turma" do
    assert_difference('MatriculaTurma.count') do
      post matricula_turmas_url, params: { matricula_turma: { aluno_id: @matricula_turma.aluno_id, turma_id: @matricula_turma.turma_id } }
    end

    assert_redirected_to matricula_turma_url(MatriculaTurma.last)
  end

  test "should show matricula_turma" do
    get matricula_turma_url(@matricula_turma)
    assert_response :success
  end

  test "should get edit" do
    get edit_matricula_turma_url(@matricula_turma)
    assert_response :success
  end

  test "should update matricula_turma" do
    patch matricula_turma_url(@matricula_turma), params: { matricula_turma: { aluno_id: @matricula_turma.aluno_id, turma_id: @matricula_turma.turma_id } }
    assert_redirected_to matricula_turma_url(@matricula_turma)
  end

  test "should destroy matricula_turma" do
    assert_difference('MatriculaTurma.count', -1) do
      delete matricula_turma_url(@matricula_turma)
    end

    assert_redirected_to matricula_turmas_url
  end
end
