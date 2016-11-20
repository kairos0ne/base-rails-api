require 'rails_helper'

RSpec.describe "Whens", type: :request do
  describe "GET /whens" do
    it "works! (now write some real specs)" do
      get whens_path
      expect(response).to have_http_status(200)
    end
  end
end
