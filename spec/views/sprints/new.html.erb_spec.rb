require 'spec_helper'

describe "sprints/new" do
  before(:each) do
    assign(:sprint, stub_model(Sprint,
      :number => 1,
      :objective => "MyString",
      :stories => ""
    ).as_new_record)
  end

  it "renders new sprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprints_path, "post" do
      assert_select "input#sprint_number[name=?]", "sprint[number]"
      assert_select "input#sprint_objective[name=?]", "sprint[objective]"
      assert_select "input#sprint_stories[name=?]", "sprint[stories]"
    end
  end
end
