require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { adress: @customer.adress, doctor_name: @customer.doctor_name, email: @customer.email, first_name: @customer.first_name, l_add_measurement: @customer.l_add_measurement, l_l_measurement: @customer.l_l_measurement, l_r_measurement: @customer.l_r_measurement, last_d_v_date: @customer.last_d_v_date, last_name: @customer.last_name, phone1: @customer.phone1, phone2: @customer.phone2 } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { adress: @customer.adress, doctor_name: @customer.doctor_name, email: @customer.email, first_name: @customer.first_name, l_add_measurement: @customer.l_add_measurement, l_l_measurement: @customer.l_l_measurement, l_r_measurement: @customer.l_r_measurement, last_d_v_date: @customer.last_d_v_date, last_name: @customer.last_name, phone1: @customer.phone1, phone2: @customer.phone2 } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
