require 'rails_helper'

RSpec.describe "OccurContinuations", type: :request do
  describe "GET /occur_continuations" do
    it "works! (now write some real specs)" do
      get occur_continuations_path
      expect(response).to have_http_status(200)
    end
  end
end
