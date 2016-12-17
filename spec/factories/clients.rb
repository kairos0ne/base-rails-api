FactoryGirl.define do
    factory :client do
      name "Test Client"
      business_area "Test the paragraph that goes in the business area"
      user
    end

    factory :user do
      name "Test"
      email "test@test.com"
      password "123123123"


    factory :client_with_users do
      transient do
        clients_count 5
      end
      
      after(:create) do |user, evaluator|
          create_list(:client, evaluator.clients_count, users: [user])
      end
    end
  end
end

