class Movie < ApplicationRecord
  validates :plot, length: { in: 3..250 }
  validates :director, presence: true
  validates :title, presence: true
  validates :year, presence: true
end
