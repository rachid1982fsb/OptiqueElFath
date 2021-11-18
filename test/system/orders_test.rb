require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Kind of glasses", with: @order.Kind_of_glasses
    fill_in "Add measurement", with: @order.add_measurement
    fill_in "Comment", with: @order.comment
    fill_in "Customer", with: @order.customer_id
    fill_in "Frame name", with: @order.frame_name
    fill_in "Glass cost in", with: @order.glass_Cost_in
    fill_in "Glass price out", with: @order.glass_price_out
    fill_in "Glasses type", with: @order.glasses_type
    fill_in "Image doctor visit", with: @order.image_doctor_visit
    fill_in "Indice", with: @order.indice
    fill_in "L measurement", with: @order.l_measurement
    fill_in "Last d v date", with: @order.last_d_v_date
    fill_in "R measurement", with: @order.r_measurement
    fill_in "Total price", with: @order.total_price
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Kind of glasses", with: @order.Kind_of_glasses
    fill_in "Add measurement", with: @order.add_measurement
    fill_in "Comment", with: @order.comment
    fill_in "Customer", with: @order.customer_id
    fill_in "Frame name", with: @order.frame_name
    fill_in "Glass cost in", with: @order.glass_Cost_in
    fill_in "Glass price out", with: @order.glass_price_out
    fill_in "Glasses type", with: @order.glasses_type
    fill_in "Image doctor visit", with: @order.image_doctor_visit
    fill_in "Indice", with: @order.indice
    fill_in "L measurement", with: @order.l_measurement
    fill_in "Last d v date", with: @order.last_d_v_date
    fill_in "R measurement", with: @order.r_measurement
    fill_in "Total price", with: @order.total_price
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
