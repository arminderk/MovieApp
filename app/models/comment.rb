class Comment < ApplicationRecord
  belongs_to :movie
  
  validates :name, presence: true
  validates :title, presence: true
  validates :comment, presence: true
end
