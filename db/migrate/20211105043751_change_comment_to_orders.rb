class ChangeCommentToOrders < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :completed, false
  end
end
