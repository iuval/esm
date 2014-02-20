# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    team_members nil
    client nil
    master nil
    stories ""
    sprints nil
    velocity 1
  end
end
