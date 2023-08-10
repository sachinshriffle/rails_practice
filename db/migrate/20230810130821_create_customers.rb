class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.integer :age
      t.integer :num

      t.timestamps
    end
  end
end
