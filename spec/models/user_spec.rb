require "rails_helper"

RSpec.describe User, :type => :model do
  it "creates two users" do
    lindeman = User.create!(name: "Andy", email: "test@test.com", password: "123123123", password_confirmation: "123123123")
    chelimsky = User.create!(name: "Shanon", email: "test2@test.com", password: "123123123", password_confirmation: "123123123")
  end
end