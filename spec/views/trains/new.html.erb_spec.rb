require 'rails_helper'

RSpec.describe "trains/new", type: :view do
  before(:each) do
    assign(:train, Train.new(
      :title => "MyString",
      :info => "MyText"
    ))
  end

  it "renders new train form" do
    render

    assert_select "form[action=?][method=?]", trains_path, "post" do

      assert_select "input[name=?]", "train[title]"

      assert_select "textarea[name=?]", "train[info]"
    end
  end
end
