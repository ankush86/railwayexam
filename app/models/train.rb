class Train < ApplicationRecord
  has_many :time_tables, dependent: :destroy
  
  validates :title, presence: true
end
