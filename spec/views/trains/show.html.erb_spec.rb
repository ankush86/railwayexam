require 'rails_helper'

RSpec.describe "trains/show", type: :view do
  before(:each) do
    @train = assign(:train, Train.create!(
      :title => "Title",
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
