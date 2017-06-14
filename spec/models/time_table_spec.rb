require 'rails_helper'

RSpec.describe TimeTable, type: :model do
  # Validation tests
  it { should validate_presence_of(:station_id) }
  it { should validate_presence_of(:train_id) }
  it { should validate_presence_of(:arrival_time) }
  it { should validate_presence_of(:departure_time) }
end
