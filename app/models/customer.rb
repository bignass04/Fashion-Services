class Customer < ActiveRecord::Base
	belongs_to :location
	has_many :prices, dependent: :destroy
	has_many :services, through: :prices
	has_and_belongs_to_many :companies

	validates :prefix, presence: true
	validates :first_name, format: {
		with: /\A[^0-9`!@#\$%\^&*+_=]+\Z/, message: "Invalid first name"
	}
	validates :middle_name, allow_blank: true, format: {
		with: /\A[^0-9`!@#\$%\^&*+_=]+\Z/, message: "Invalid middle name"
	}
	validates :last_name, format: {
		with: /\A[^0-9`!@#\$%\^&*+_=]+\Z/, message: "Invalid last name"
	}
	validates :email, format: {
		with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
	}
	validates :suffix, presence: false

	def get_amount
		return self.prices.first.amount
	end

	def name
		return [prefix, first_name, middle_name, last_name, suffix].join " "
	end
end
