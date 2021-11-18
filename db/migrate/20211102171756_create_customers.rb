class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      
      t.string :first_name
      t.string :last_name
      t.string :phone1
      t.string :phone2
      t.string :email
      t.integer :l_r_measurement
      t.integer :l_l_measurement
      t.integer :l_add_measurement
      t.string :adress
      t.date :last_d_v_date
      t.string :doctor_name

      t.timestamps
    end
  end
end
