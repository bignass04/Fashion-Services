class Price < ActiveRecord::Base
	belongs_to :customer
	belongs_to :company
	belongs_to :service

	monetize :amount_cents
end
