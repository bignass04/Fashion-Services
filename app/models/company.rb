class Company < ActiveRecord::Base
 	belongs_to :location
	has_many :prices, dependent: :destroy
	has_many :services, through: :prices
	has_and_belongs_to_many :customers

	def get_amount
		return self.prices.first.amount
	end
end
