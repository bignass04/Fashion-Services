class AddEmailAndPhoneToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :email, :string
    add_column :companies, :phone, :integer
  end
end
