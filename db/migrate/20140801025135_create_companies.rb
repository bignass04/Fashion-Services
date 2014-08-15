class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :location_id

      t.timestamps
    end
  end
end
