class TimeTable < ApplicationRecord
  belongs_to :station
  belongs_to :train
  
  validates :arrival_time, presence: true
  validates :departure_time, presence: true
  validates :station_id, presence: true
  validates :train_id, presence: true

end
