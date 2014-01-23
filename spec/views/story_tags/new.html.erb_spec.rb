require 'spec_helper'

describe "story_tags/new" do
  before(:each) do
    assign(:story_tag, stub_model(StoryTag,
      :story => nil,
      :tag => nil
    ).as_new_record)
  end

  it "renders new story_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", story_tags_path, "post" do
      assert_select "input#story_tag_story[name=?]", "story_tag[story]"
      assert_select "input#story_tag_tag[name=?]", "story_tag[tag]"
    end
  end
end
