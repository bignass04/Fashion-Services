class Company < ActiveRecord::Base
  has_many  :customers
  has_many  :services
end
