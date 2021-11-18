class AddReturnDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :return_date, :date
  end
end
