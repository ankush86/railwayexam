require 'rails_helper'

RSpec.describe "time_tables/edit", type: :view do
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
      :arrival_time => Faker::Time.forward(1, :midnight), 
      :departure_time => Faker::Time.forward(1, :midnight),      
      :station_id => @station.id,
      :train_id => @train.id
    ))
  end

  it "renders the edit time_table form" do
    render

    assert_select "form[action=?][method=?]", time_table_path(@time_table), "post" do


      assert_select "select[name=?]", "time_table[station_id]"
      assert_select "select[name=?]", "time_table[train_id]"
    end
  end
end
