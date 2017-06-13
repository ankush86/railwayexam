require 'rails_helper'

RSpec.describe "staffs/new", type: :view do
  before(:each) do
    assign(:staff, Staff.new(
      :title => "MyString",
      :info => "MyText",
      :station => nil
    ))
  end

  it "renders new staff form" do
    render

    assert_select "form[action=?][method=?]", staffs_path, "post" do

      assert_select "input[name=?]", "staff[title]"

      assert_select "textarea[name=?]", "staff[info]"

      assert_select "select[name=?]", "staff[station_id]"
    end
  end
end
