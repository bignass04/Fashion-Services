class Service < ActiveRecord::Base
  has_and_belongs_to_many :customers
  has_and_belongs_to_many :companies
  
  validates :name, presence: true
  
  validates_format_of :name, with: /\A[-a-z]+\Z/, message: "This only allows numbers"
end
