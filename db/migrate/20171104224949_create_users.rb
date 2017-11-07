class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.boolean :admin
      t.integer :account_id
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
