class CreatePrices < ActiveRecord::Migration
  def change
    drop_table :customers_services
    create_table :prices do |t|
      t.integer :company_id
      t.integer :customer_id
      t.integer :service_id
      t.decimal :amount

      t.timestamps
    end
  end
end
