class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # when you delete a list, you should delete all associated bookmarks
  # (but not the movies as they can be referenced in other lists).
  # when you delete a movie, you should delete all associated bookmarks




  # you cannot delete a movie if it is referenced in at least one bookmark
  validates :movie, presence: true
  validates :movie, uniqueness: { scope: :list, message: "and list pairing should be unique" }
  validates :comment, length: { minimum: 6 }
end
