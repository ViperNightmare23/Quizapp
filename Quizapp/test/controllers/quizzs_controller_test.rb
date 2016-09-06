require 'test_helper'

class QuizzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quizz = quizzs(:one)
  end

  test "should get index" do
    get quizzs_url
    assert_response :success
  end

  test "should get new" do
    get new_quizz_url
    assert_response :success
  end

  test "should create quizz" do
    assert_difference('Quizz.count') do
      post quizzs_url, params: { quizz: { ans1: @quizz.ans1, ans2: @quizz.ans2, ans3: @quizz.ans3, ans4: @quizz.ans4, correctAns: @quizz.correctAns, question: @quizz.question } }
    end

    assert_redirected_to quizz_url(Quizz.last)
  end

  test "should show quizz" do
    get quizz_url(@quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quizz_url(@quizz)
    assert_response :success
  end

  test "should update quizz" do
    patch quizz_url(@quizz), params: { quizz: { ans1: @quizz.ans1, ans2: @quizz.ans2, ans3: @quizz.ans3, ans4: @quizz.ans4, correctAns: @quizz.correctAns, question: @quizz.question } }
    assert_redirected_to quizz_url(@quizz)
  end

  test "should destroy quizz" do
    assert_difference('Quizz.count', -1) do
      delete quizz_url(@quizz)
    end

    assert_redirected_to quizzs_url
  end
end
