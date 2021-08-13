class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # validates_associated :movies, :bookmarks
  validates :name, presence: true, uniqueness: true
end
