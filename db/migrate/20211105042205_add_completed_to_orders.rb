class AddCompletedToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :completed, :boolean
  end
end



##rails generate migration add_fieldname_to_tablename fieldname:string