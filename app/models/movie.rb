class Movie < ApplicationRecord
  has_many :lists, through: :bookmark
end
