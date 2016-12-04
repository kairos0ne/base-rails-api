FactoryGirl.define do
  factory :epic do
    as "The context of the situation/ scenario"
    iwant "To do some action"
    sothat "Some expected outcome"
    status "New"
    status_value 1
    project nil
  end
end
