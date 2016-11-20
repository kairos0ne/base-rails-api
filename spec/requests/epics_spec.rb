require 'rails_helper'

RSpec.describe "Epics", type: :request do
  describe "GET /epics" do
    it "works! (now write some real specs)" do
      get epics_path
      expect(response).to have_http_status(200)
    end
  end
end
