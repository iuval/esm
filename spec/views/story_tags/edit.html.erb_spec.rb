require 'spec_helper'

describe "story_tags/edit" do
  before(:each) do
    @story_tag = assign(:story_tag, stub_model(StoryTag,
      :story => nil,
      :tag => nil
    ))
  end

  it "renders the edit story_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", story_tag_path(@story_tag), "post" do
      assert_select "input#story_tag_story[name=?]", "story_tag[story]"
      assert_select "input#story_tag_tag[name=?]", "story_tag[tag]"
    end
  end
end
