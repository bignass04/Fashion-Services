class AddEmailAndPhoneToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :email, :string
    add_column :customers, :phone, :integer
  end
end
