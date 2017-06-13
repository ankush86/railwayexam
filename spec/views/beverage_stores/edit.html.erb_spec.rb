require 'rails_helper'

RSpec.describe "beverage_stores/edit", type: :view do
  before(:each) do

    @station = assign(:station, Station.create!(
      :title => "Station",
      :info => "info",
      :phone => "12345678",
      :address => "Address" 
    ))

    @beverage_store = assign(:beverage_store, BeverageStore.create!(
      :title => "MyString",
      :info => "MyString",
      :station_id => @station.id
    ))
  end

  it "renders the edit beverage_store form" do
    render

    assert_select "form[action=?][method=?]", beverage_store_path(@beverage_store), "post" do

      assert_select "input[name=?]", "beverage_store[title]"

      assert_select "textarea[name=?]", "beverage_store[info]"

      assert_select "select[name=?]", "beverage_store[station_id]"
    end
  end
end
