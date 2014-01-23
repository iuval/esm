# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    story nil
    name "MyString"
    state "MyString"
  end
end
