class MonetizePrice < ActiveRecord::Migration
  def change
  	change_table :prices do |t|
  		t.money :amount
  	end
  end
end
