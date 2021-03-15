class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :plot, length: { in: 3..250 }
  validates :director, presence: true
  validates :title, presence: true
  validates :year, presence: true
end
