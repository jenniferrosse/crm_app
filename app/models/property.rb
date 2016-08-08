class Property < ActiveRecord::Base
  has_many :units, -> { order 'market_rent DESC' }
end
