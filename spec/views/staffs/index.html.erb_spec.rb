require 'rails_helper'

RSpec.describe "staffs/index", type: :view do
  before(:each) do
    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))

    assign(:staffs, [
      Staff.create!(
        :title => "Title",
        :info => "MyText",
        :station_id => @station.id
      ),
      Staff.create!(
        :title => "Title",
        :info => "MyText",
        :station_id => @station.id
      )
    ])
  end

  it "renders a list of staffs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Station".to_s, :count => 2
  end
end
