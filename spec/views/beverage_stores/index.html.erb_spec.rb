require 'rails_helper'

RSpec.describe "beverage_stores/index", type: :view do
  before(:each) do
    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))


    assign(:beverage_stores, [
      BeverageStore.create!(
        :title => "Title",
        :info => "Info",
        :station_id => @station.id
      ),
      BeverageStore.create!(
        :title => "Title",
        :info => "Info",
        :station_id => @station.id
      )
    ])
  end

  it "renders a list of beverage_stores" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
    assert_select "tr>td", :text => "Station".to_s, :count => 2
  end
end
