require "test_helper"

class Num2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @num2 = num2s(:one)
  end

  test "should get index" do
    get num2s_url
    assert_response :success
  end

  test "should get new" do
    get new_num2_url
    assert_response :success
  end

  test "should create num2" do
    assert_difference('Num2.count') do
      post num2s_url, params: { num2: { acc_number: @num2.acc_number, acc_type: @num2.acc_type, bank: @num2.bank, email: @num2.email, person_name: @num2.person_name, rut: @num2.rut } }
    end

    assert_redirected_to num2_url(Num2.last)
  end

  test "should show num2" do
    get num2_url(@num2)
    assert_response :success
  end

  test "should get edit" do
    get edit_num2_url(@num2)
    assert_response :success
  end

  test "should update num2" do
    patch num2_url(@num2), params: { num2: { acc_number: @num2.acc_number, acc_type: @num2.acc_type, bank: @num2.bank, email: @num2.email, person_name: @num2.person_name, rut: @num2.rut } }
    assert_redirected_to num2_url(@num2)
  end

  test "should destroy num2" do
    assert_difference('Num2.count', -1) do
      delete num2_url(@num2)
    end

    assert_redirected_to num2s_url
  end
end
