require 'rails_helper'

RSpec.describe "stations/new", type: :view do
  before(:each) do
    assign(:station, Station.new(
      :title => "MyString",
      :phone => "MyString",
      :address => "MyText",
      :info => "MyText"
    ))
  end

  it "renders new station form" do
    render

    assert_select "form[action=?][method=?]", stations_path, "post" do

      assert_select "input[name=?]", "station[title]"

      assert_select "input[name=?]", "station[phone]"

      assert_select "textarea[name=?]", "station[address]"

      assert_select "textarea[name=?]", "station[info]"
    end
  end
end
