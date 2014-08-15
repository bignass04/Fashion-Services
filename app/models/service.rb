class Service < ActiveRecord::Base
	has_many :prices, dependent: :destroy
	has_many :customers, through: :prices
	has_many :companies, through: :prices
  
	validates :name, presence: true
  
	validates_format_of :name, with: /\A[-a-z]+\Z/, message: "This only allows numbers"
end
