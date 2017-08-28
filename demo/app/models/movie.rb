class Movie < ApplicationRecord
  has_many :show_times
  has_many :theatres, :through => :show_times
end
