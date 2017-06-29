class User < ApplicationRecord
  
  has_many :cars
  
  scope :by_first_name, lambda { order("users.first_name DESC") }
  scope :by_email, lambda { order("users.email ASC") }
  scope :by_id_descending, lambda { order("users.id DESC")}
  scope :has_pet, lambda { where(:hasPet => true)}
end
