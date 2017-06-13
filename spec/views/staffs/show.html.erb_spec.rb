require 'rails_helper'

RSpec.describe "staffs/show", type: :view do
  before(:each) do

    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))

    @staff = assign(:staff, Staff.create!(
      :title => "Title",
      :info => "MyText",
      :station_id => @station.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Station/)
  end
end
