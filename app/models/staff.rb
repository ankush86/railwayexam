class Staff < ApplicationRecord
  belongs_to :station
  validates :title, presence: true
  validates :station_id, presence: true
end
