class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :frame_name
      t.integer :r_measurement
      t.integer :l_measurement
      t.integer :add_measurement
      t.string :Kind_of_glasses
      t.string :glasses_type
      t.string :indice
      t.date :last_d_v_date
      t.string :image_doctor_visit
      t.integer :glass_Cost_in
      t.integer :glass_price_out
      t.integer :total_price
      t.string :comment
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
