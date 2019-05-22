class Plant < ApplicationRecord
  belongs_to :garden

  validates :image_url, presence: true
  validates :name, presence: true
end
