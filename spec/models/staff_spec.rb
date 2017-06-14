require 'rails_helper'

RSpec.describe Staff, type: :model do
  # Validation tests
  it { should validate_presence_of(:station_id) }
  it { should validate_presence_of(:title) }
end
