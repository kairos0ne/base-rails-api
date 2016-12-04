require 'rails_helper'

RSpec.describe "Clients", type: :request do
  describe "GET /clients" do
    it "gets all clients" do
      get clients_path
      expect(response).to have_http_status(200)
    end
  end
end
