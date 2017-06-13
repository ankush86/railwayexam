require 'rails_helper'

RSpec.describe Train, type: :model do
  # Association test
  it { should have_many(:time_tables).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:title) }  
end
