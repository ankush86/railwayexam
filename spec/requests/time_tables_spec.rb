require 'rails_helper'

RSpec.describe "TimeTables", type: :request do

  login_user
  
  describe "GET /time_tables" do
    it "works! (now write some real specs)" do
      get time_tables_path
      expect(response).to have_http_status(200)
    end
  end
end
