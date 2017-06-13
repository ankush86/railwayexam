require 'rails_helper'

RSpec.describe "stations/edit", type: :view do
  before(:each) do
    @station = assign(:station, Station.create!(
      :title => "MyString",
      :phone => "MyString",
      :address => "MyText",
      :info => "MyText"
    ))
  end

  it "renders the edit station form" do
    render

    assert_select "form[action=?][method=?]", station_path(@station), "post" do

      assert_select "input[name=?]", "station[title]"

      assert_select "input[name=?]", "station[phone]"

      assert_select "textarea[name=?]", "station[address]"

      assert_select "textarea[name=?]", "station[info]"
    end
  end
end
