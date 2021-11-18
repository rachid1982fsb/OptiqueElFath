class AddAmountPaidToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :amount_paid, :integer
  end
end
