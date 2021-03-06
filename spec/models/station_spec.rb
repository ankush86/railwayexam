require 'rails_helper'

RSpec.describe Station, type: :model do
  # Association test
  it { should have_many(:time_tables).dependent(:destroy) }
  it { should have_many(:beverage_stores).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:title) }
end
