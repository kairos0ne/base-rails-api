require 'rails_helper'

RSpec.describe "GivenContinuations", type: :request do
  describe "GET /given_continuations" do
    it "works! (now write some real specs)" do
      get given_continuations_path
      expect(response).to have_http_status(200)
    end
  end
end
