require 'rails_helper'

RSpec.describe "trains/index", type: :view do  
  before(:each) do
    assign(:trains, [
      Train.create!(
        :title => "Title",
        :info => "MyText"
      ),
      Train.create!(
        :title => "Title",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of trains" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
