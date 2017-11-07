class CreateOrdersneakers < ActiveRecord::Migration[5.1]
  def change
    create_table :ordersneakers do |t|
      t.integer :sneaker_id
      t.integer :sneaker_quantity

      t.timestamps
    end
  end
end
