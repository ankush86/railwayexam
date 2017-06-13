class TimeTable < ApplicationRecord
  belongs_to :station
  belongs_to :train
  
  validates :station_id, presence: true
  validates :train_id, presence: true

end
