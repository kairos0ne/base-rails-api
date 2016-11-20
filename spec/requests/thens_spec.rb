require 'rails_helper'

RSpec.describe "Thens", type: :request do
  describe "GET /thens" do
    it "works! (now write some real specs)" do
      get thens_path
      expect(response).to have_http_status(200)
    end
  end
end
