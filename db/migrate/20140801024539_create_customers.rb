class CreateCustomers < ActiveRecord::Migration
  def change
    drop_table :customers
    
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :company_id
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :location_id

      t.timestamps
    end
  end
end
