class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :cost_in
      t.integer :price_out
      t.string :color
      t.integer :d1
      t.integer :d2
      t.integer :d3
      t.integer :d4
      t.string :comment

      t.timestamps
    end
  end
end
