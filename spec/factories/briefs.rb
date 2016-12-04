FactoryGirl.define do
  factory :brief do
    Project "Test the Project Name"
    objective "The objective that is input through testing factory girl to checjk if concatination is working"
    overview "MyText"
    status "MyString"
    status_value 1
    project nil
  end
end
