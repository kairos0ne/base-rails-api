FactoryGirl.define do
  factory :brief do
    Project "MyString"
    objective "MyText"
    overview "MyText"
    status "MyString"
    status_value 1
    project nil
  end
end
