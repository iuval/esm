# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sprint do
    number 1
    objective "MyString"
    from "2014-02-20"
    to "2014-02-20"
    stories ""
  end
end
