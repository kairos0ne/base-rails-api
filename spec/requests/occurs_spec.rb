require 'rails_helper'

RSpec.describe "Occurs", type: :request do
  describe "GET /occurs" do
    it "works! (now write some real specs)" do
      get occurs_path
      expect(response).to have_http_status(200)
    end
  end
end
