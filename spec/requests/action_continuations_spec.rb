require 'rails_helper'

RSpec.describe "ActionContinuations", type: :request do
  describe "GET /action_continuations" do
    it "works! (now write some real specs)" do
      get action_continuations_path
      expect(response).to have_http_status(200)
    end
  end
end
