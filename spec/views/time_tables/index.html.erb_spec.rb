require 'rails_helper'

RSpec.describe "time_tables/index", type: :view do
  before(:each) do
    @train = assign(:train, Train.create!(
      :title => "Train",
      :info => "T Info"
    ))
    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "S Info",
      :phone => "12345678",
      :address => "Address" 
    ))

    assign(:time_tables, [
      TimeTable.create!(
        :station_id => @station.id,
        :train_id => @train.id
      ),
      TimeTable.create!(
        :station_id => @station.id,
        :train_id => @train.id
      )
    ])
  end

  it "renders a list of time_tables" do
    render
    assert_select "tr>td", :text => "Station".to_s, :count => 2
    assert_select "tr>td", :text => "Train".to_s, :count => 2
  end
end
