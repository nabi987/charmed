class Necklace < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :rentals
  validates :name, :price, :description, :gemstone, :material, presence: true
  validates :description, length: { minimum: 5 }
  validates :price, numericality: true
end
