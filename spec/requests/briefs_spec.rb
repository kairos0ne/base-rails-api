require 'rails_helper'

RSpec.describe "Briefs", type: :request do
  describe "GET /briefs" do
    it "works! (now write some real specs)" do
      get briefs_path
      expect(response).to have_http_status(200)
    end
  end
end
