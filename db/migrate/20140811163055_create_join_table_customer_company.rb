class CreateJoinTableCustomerCompany < ActiveRecord::Migration
  def change
    create_join_table :customers, :companies do |t|
      # t.index [:customer_id, :company_id]
      # t.index [:company_id, :customer_id]
    end
  end
end
