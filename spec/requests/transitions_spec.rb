require 'rails_helper'

RSpec.describe "Transitions", type: :request do
  describe "GET /transitions" do
    it "works! (now write some real specs)" do
      get transitions_path
      expect(response).to have_http_status(200)
    end
  end
end
