class Movie < ApplicationRecord
  has_many :actors
  validates :plot, length: { in: 3..250 }
  validates :director, presence: true
  validates :title, presence: true
  validates :year, presence: true
end
