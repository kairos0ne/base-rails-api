FactoryGirl.define do
  factory :project do
    name "Project Name"
    description "The description goes here with all th eother, I told you so's"
    status "MyString"
    status_value 1
    type ""
    client nil
  end
end
