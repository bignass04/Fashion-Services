class AddSuffixAndPrefixToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :prefix, :string
    add_column :customers, :suffix, :string
  end
end
