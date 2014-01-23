require 'spec_helper'

describe "story_tags/show" do
  before(:each) do
    @story_tag = assign(:story_tag, stub_model(StoryTag,
      :story => nil,
      :tag => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
