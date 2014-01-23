require 'spec_helper'

describe "stories/edit" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :summary => "MyText",
      :detail => "MyText",
      :user => nil,
      :points => "MyString",
      :position => 1,
      :epic => nil
    ))
  end

  it "renders the edit story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", story_path(@story), "post" do
      assert_select "textarea#story_summary[name=?]", "story[summary]"
      assert_select "textarea#story_detail[name=?]", "story[detail]"
      assert_select "input#story_user[name=?]", "story[user]"
      assert_select "input#story_points[name=?]", "story[points]"
      assert_select "input#story_position[name=?]", "story[position]"
      assert_select "input#story_epic[name=?]", "story[epic]"
    end
  end
end
