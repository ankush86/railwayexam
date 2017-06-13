require 'rails_helper'

RSpec.describe "trains/edit", type: :view do
  before(:each) do
    @train = assign(:train, Train.create!(
      :title => "MyString",
      :info => "MyText"
    ))
  end

  it "renders the edit train form" do
    render

    assert_select "form[action=?][method=?]", train_path(@train), "post" do

      assert_select "input[name=?]", "train[title]"

      assert_select "textarea[name=?]", "train[info]"
    end
  end
end
