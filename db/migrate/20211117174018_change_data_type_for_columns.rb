class ChangeDataTypeForColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :r_measurement, :string
    change_column :orders, :l_measurement, :string
    change_column :orders, :add_measurement, :string
    change_column :customers, :l_r_measurement, :string
    change_column :customers, :l_l_measurement, :string
    change_column :customers, :l_add_measurement, :string
  end
end
