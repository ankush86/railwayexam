require 'rails_helper'

RSpec.describe "time_tables/new", type: :view do
  before(:each) do
    assign(:time_table, TimeTable.new(
      :station => nil,
      :train => nil
    ))
  end

  it "renders new time_table form" do
    render

    assert_select "form[action=?][method=?]", time_tables_path, "post" do

      assert_select "select[name=?]", "time_table[station_id]"

      assert_select "select[name=?]", "time_table[train_id]"
    end
  end
end
