class Plant < ApplicationRecord
  belongs_to :garden

  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :image_url, presence: true
  validates :name, presence: true
end
