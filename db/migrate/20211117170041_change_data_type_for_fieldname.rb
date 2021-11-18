class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :r_measurement, :decimal
    change_column :orders, :l_measurement, :decimal
    change_column :orders, :add_measurement, :decimal
end
end

