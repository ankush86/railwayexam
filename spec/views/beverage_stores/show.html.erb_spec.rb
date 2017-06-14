require 'rails_helper'

RSpec.describe "beverage_stores/show", type: :view do
  before(:each) do

    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))

    @beverage_store = assign(:beverage_store, BeverageStore.create!(
      :title => "Title",
      :info => "Info",
      :price => 10,
      :station_id => @station.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Info/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Station/)
  end
end
