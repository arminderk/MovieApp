class Theatre < ApplicationRecord
  has_many :show_times
  has_many :movies, :through => :show_times
end
