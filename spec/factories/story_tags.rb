# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story_tag do
    story nil
    tag nil
  end
end
