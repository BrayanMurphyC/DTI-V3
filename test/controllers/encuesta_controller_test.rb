require 'test_helper'

class EncuestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encuestum = encuesta(:one)
  end

  test "should get index" do
    get encuesta_url
    assert_response :success
  end

  test "should get new" do
    get new_encuestum_url
    assert_response :success
  end

  test "should create encuestum" do
    assert_difference('Encuestum.count') do
      post encuesta_url, params: { encuestum: { comentarios: @encuestum.comentarios, q10: @encuestum.q10, q11: @encuestum.q11, q12: @encuestum.q12, q13: @encuestum.q13, q1: @encuestum.q1, q2: @encuestum.q2, q3: @encuestum.q3, q4: @encuestum.q4, q5: @encuestum.q5, q6: @encuestum.q6, q7: @encuestum.q7, q8: @encuestum.q8, q9: @encuestum.q9, recomendaciones: @encuestum.recomendaciones, temas: @encuestum.temas } }
    end

    assert_redirected_to encuestum_url(Encuestum.last)
  end

  test "should show encuestum" do
    get encuestum_url(@encuestum)
    assert_response :success
  end

  test "should get edit" do
    get edit_encuestum_url(@encuestum)
    assert_response :success
  end

  test "should update encuestum" do
    patch encuestum_url(@encuestum), params: { encuestum: { comentarios: @encuestum.comentarios, q10: @encuestum.q10, q11: @encuestum.q11, q12: @encuestum.q12, q13: @encuestum.q13, q1: @encuestum.q1, q2: @encuestum.q2, q3: @encuestum.q3, q4: @encuestum.q4, q5: @encuestum.q5, q6: @encuestum.q6, q7: @encuestum.q7, q8: @encuestum.q8, q9: @encuestum.q9, recomendaciones: @encuestum.recomendaciones, temas: @encuestum.temas } }
    assert_redirected_to encuestum_url(@encuestum)
  end

  test "should destroy encuestum" do
    assert_difference('Encuestum.count', -1) do
      delete encuestum_url(@encuestum)
    end

    assert_redirected_to encuesta_url
  end
end
