class Theatre < ApplicationRecord
  has_many :show_times
  has_many :movies, :through => :show_times
  
  monetize :price_cents
  
  validates :name, :price, :presence => true
end
