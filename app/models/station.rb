class Station < ApplicationRecord
  has_many :time_tables, dependent: :destroy
  has_many :beverage_stores, dependent: :destroy
  
  validates :title, presence: true
end
