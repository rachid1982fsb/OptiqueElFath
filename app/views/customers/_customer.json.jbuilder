json.extract! customer, :id, :first_name, :last_name, :phone1, :phone2, :email, :l_r_measurement, :l_l_measurement, :l_add_measurement, :adress, :last_d_v_date, :doctor_name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
