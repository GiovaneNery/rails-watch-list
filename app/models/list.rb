class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :name, presence: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
end
