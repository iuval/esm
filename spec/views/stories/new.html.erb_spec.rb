require 'spec_helper'

describe "stories/new" do
  before(:each) do
    assign(:story, stub_model(Story,
      :summary => "MyText",
      :detail => "MyText",
      :user => nil,
      :points => "MyString",
      :position => 1,
      :epic => nil
    ).as_new_record)
  end

  it "renders new story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stories_path, "post" do
      assert_select "textarea#story_summary[name=?]", "story[summary]"
      assert_select "textarea#story_detail[name=?]", "story[detail]"
      assert_select "input#story_user[name=?]", "story[user]"
      assert_select "input#story_points[name=?]", "story[points]"
      assert_select "input#story_position[name=?]", "story[position]"
      assert_select "input#story_epic[name=?]", "story[epic]"
    end
  end
end
