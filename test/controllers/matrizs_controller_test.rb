require 'test_helper'

class MatrizsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matriz = matrizs(:one)
  end

  test "should get index" do
    get matrizs_url
    assert_response :success
  end

  test "should get new" do
    get new_matriz_url
    assert_response :success
  end

  test "should create matriz" do
    assert_difference('Matriz.count') do
      post matrizs_url, params: { matriz: { curriculo_id: @matriz.curriculo_id, curso_id: @matriz.curso_id, nome: @matriz.nome } }
    end

    assert_redirected_to matriz_url(Matriz.last)
  end

  test "should show matriz" do
    get matriz_url(@matriz)
    assert_response :success
  end

  test "should get edit" do
    get edit_matriz_url(@matriz)
    assert_response :success
  end

  test "should update matriz" do
    patch matriz_url(@matriz), params: { matriz: { curriculo_id: @matriz.curriculo_id, curso_id: @matriz.curso_id, nome: @matriz.nome } }
    assert_redirected_to matriz_url(@matriz)
  end

  test "should destroy matriz" do
    assert_difference('Matriz.count', -1) do
      delete matriz_url(@matriz)
    end

    assert_redirected_to matrizs_url
  end
end
