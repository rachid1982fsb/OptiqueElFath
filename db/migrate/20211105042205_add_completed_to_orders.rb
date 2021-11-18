class AddCompletedToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :completed, :boolean
  end
end



ails g change_comment_to_orders 