require 'rails_helper'

RSpec.describe BeverageStore, type: :model do
  # Validation tests
  it { should validate_presence_of(:station_id) }
  it { should validate_presence_of(:title) }
end
