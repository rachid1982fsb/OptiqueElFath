require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { Kind_of_glasses: @order.Kind_of_glasses, add_measurement: @order.add_measurement, comment: @order.comment, customer_id: @order.customer_id, frame_name: @order.frame_name, glass_Cost_in: @order.glass_Cost_in, glass_price_out: @order.glass_price_out, glasses_type: @order.glasses_type, image_doctor_visit: @order.image_doctor_visit, indice: @order.indice, l_measurement: @order.l_measurement, last_d_v_date: @order.last_d_v_date, r_measurement: @order.r_measurement, total_price: @order.total_price } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { Kind_of_glasses: @order.Kind_of_glasses, add_measurement: @order.add_measurement, comment: @order.comment, customer_id: @order.customer_id, frame_name: @order.frame_name, glass_Cost_in: @order.glass_Cost_in, glass_price_out: @order.glass_price_out, glasses_type: @order.glasses_type, image_doctor_visit: @order.image_doctor_visit, indice: @order.indice, l_measurement: @order.l_measurement, last_d_v_date: @order.last_d_v_date, r_measurement: @order.r_measurement, total_price: @order.total_price } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
