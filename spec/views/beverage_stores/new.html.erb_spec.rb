require 'rails_helper'

RSpec.describe "beverage_stores/new", type: :view do
  before(:each) do
    assign(:beverage_store, BeverageStore.new(
      :title => "MyString",
      :info => "Info",
      :station => nil
    ))
  end

  it "renders new beverage_store form" do
    render

    assert_select "form[action=?][method=?]", beverage_stores_path, "post" do

      assert_select "input[name=?]", "beverage_store[title]"

      assert_select "textarea[name=?]", "beverage_store[info]"

      assert_select "select[name=?]", "beverage_store[station_id]"
    end
  end
end
