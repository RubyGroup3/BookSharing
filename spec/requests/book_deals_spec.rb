require 'rails_helper'

RSpec.describe "BookDeals", type: :request do
  describe "GET /book_deals" do
    it "works! (now write some real specs)" do
      get book_deals_path
      expect(response).to have_http_status(200)
    end
  end
end
