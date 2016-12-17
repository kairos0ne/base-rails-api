require 'rails_helper'

RSpec.describe "API Authentication", type: :request do 

    describe "POST /authenticate" do

        let(:user) { build :user }

        subject do
            post "/authenticate",
            params: { email: user.email, password: user.password }.to_jason
        end

    context "with valid credentials" do
      let(:user) { create :user }

      it "is successful" do
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "returns a token" do
          expect(response).to have_http_status(:token)
      end
    end

    context "with invalid credentials" do
      let(:user) { build :user }

      it "is unauthorised" do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
