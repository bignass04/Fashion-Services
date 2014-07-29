class CreateJoinTableCustomerService < ActiveRecord::Migration
  def change
    create_join_table :customers, :services do |t|
      # t.index [:customer_id, :service_id]
      # t.index [:service_id, :customer_id]
    end
  end
end
