require 'test_helper'

class ComponenteMatrizsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componente_matriz = componente_matrizs(:one)
  end

  test "should get index" do
    get componente_matrizs_url
    assert_response :success
  end

  test "should get new" do
    get new_componente_matriz_url
    assert_response :success
  end

  test "should create componente_matriz" do
    assert_difference('ComponenteMatriz.count') do
      post componente_matrizs_url, params: { componente_matriz: { disciplina_id: @componente_matriz.disciplina_id, matriz_id: @componente_matriz.matriz_id, nome: @componente_matriz.nome } }
    end

    assert_redirected_to componente_matriz_url(ComponenteMatriz.last)
  end

  test "should show componente_matriz" do
    get componente_matriz_url(@componente_matriz)
    assert_response :success
  end

  test "should get edit" do
    get edit_componente_matriz_url(@componente_matriz)
    assert_response :success
  end

  test "should update componente_matriz" do
    patch componente_matriz_url(@componente_matriz), params: { componente_matriz: { disciplina_id: @componente_matriz.disciplina_id, matriz_id: @componente_matriz.matriz_id, nome: @componente_matriz.nome } }
    assert_redirected_to componente_matriz_url(@componente_matriz)
  end

  test "should destroy componente_matriz" do
    assert_difference('ComponenteMatriz.count', -1) do
      delete componente_matriz_url(@componente_matriz)
    end

    assert_redirected_to componente_matrizs_url
  end
end
