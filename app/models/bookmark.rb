class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_many :reviews
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :list, presence: true
end
