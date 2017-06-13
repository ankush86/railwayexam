require 'rails_helper'

RSpec.describe "time_tables/show", type: :view do


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

    @time_table = assign(:time_table, TimeTable.create!(
      :station_id => @station.id,
      :train_id => @train.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Train/)
    expect(rendered).to match(/Station/)
  end
end
