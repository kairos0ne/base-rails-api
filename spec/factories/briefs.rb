FactoryGirl.define do
  factory :brief do
    objective "MyText"
    overview "MyText"
    status "MyText"
    status_value 1
    ticket "MyString"
    jira_epic "MyString"
    project nil
  end
end
