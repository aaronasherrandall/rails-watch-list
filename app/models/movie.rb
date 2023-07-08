class Movie < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
