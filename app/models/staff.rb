class Staff < ApplicationRecord
  belongs_to :station
  
  validates :station_id, presence: true
end
