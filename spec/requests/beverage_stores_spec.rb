require 'rails_helper'

RSpec.describe "BeverageStores", type: :request do
  describe "GET /beverage_stores" do
    it "works! (now write some real specs)" do
      get beverage_stores_path
      expect(response).to have_http_status(200)
    end
  end
end
