class Review < ApplicationRecord
  belongs_to :list
  validates :rating, numericality: true, presence: true, inclusion: { in: 0..10, allow_nil: false }
end
