# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    summary "MyText"
    detail "MyText"
    user nil
    points "MyString"
    position 1
    epic nil
  end
end
