require 'rails_helper'

RSpec.describe "stations/index", type: :view do
  before(:each) do
    assign(:stations, [
      Station.create!(
        :title => "Title",
        :phone => "Phone",
        :address => "MyText",
        :info => "MyInfo"
      ),
      Station.create!(
        :title => "Title",
        :phone => "Phone",
        :address => "MyText",
        :info => "MyInfo"
      )
    ])
  end

  it "renders a list of stations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyInfo".to_s, :count => 2
  end
end
