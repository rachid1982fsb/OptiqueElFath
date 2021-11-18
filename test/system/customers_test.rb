require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Adress", with: @customer.adress
    fill_in "Doctor name", with: @customer.doctor_name
    fill_in "Email", with: @customer.email
    fill_in "First name", with: @customer.first_name
    fill_in "L add measurement", with: @customer.l_add_measurement
    fill_in "L l measurement", with: @customer.l_l_measurement
    fill_in "L r measurement", with: @customer.l_r_measurement
    fill_in "Last d v date", with: @customer.last_d_v_date
    fill_in "Last name", with: @customer.last_name
    fill_in "Phone1", with: @customer.phone1
    fill_in "Phone2", with: @customer.phone2
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @customer.adress
    fill_in "Doctor name", with: @customer.doctor_name
    fill_in "Email", with: @customer.email
    fill_in "First name", with: @customer.first_name
    fill_in "L add measurement", with: @customer.l_add_measurement
    fill_in "L l measurement", with: @customer.l_l_measurement
    fill_in "L r measurement", with: @customer.l_r_measurement
    fill_in "Last d v date", with: @customer.last_d_v_date
    fill_in "Last name", with: @customer.last_name
    fill_in "Phone1", with: @customer.phone1
    fill_in "Phone2", with: @customer.phone2
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
