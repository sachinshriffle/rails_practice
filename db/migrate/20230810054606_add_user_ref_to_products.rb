class AddUserRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :user, null: false, foreign_key: true
    add_reference :products, :customers, foreign_key: true
    change_column :products, :part_number, :text
  end
end
