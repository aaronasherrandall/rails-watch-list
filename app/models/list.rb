class List < ApplicationRecord

  validates :list, presence: true, uniqueness: true
end
