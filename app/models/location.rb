class Location < ActiveRecord::Base
  has_many :companies
  has_many :customers

  validates :state, presence: true, format: {
  	with: /\A[A-Z]{2}\Z/
  }
end
