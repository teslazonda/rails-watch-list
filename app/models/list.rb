class List < ApplicationRecord
  has_many :movies, through: :bookmark
end
