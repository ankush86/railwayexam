require 'rails_helper'

RSpec.describe "staffs/edit", type: :view do
  before(:each) do
    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))

    @staff = assign(:staff, Staff.create!(
      :title => "MyString",
      :info => "MyText",
      :station_id => @station.id
    ))
  end

  it "renders the edit staff form" do
    render

    assert_select "form[action=?][method=?]", staff_path(@staff), "post" do

      assert_select "input[name=?]", "staff[title]"

      assert_select "textarea[name=?]", "staff[info]"

      assert_select "select[name=?]", "staff[station_id]"
    end
  end
end
