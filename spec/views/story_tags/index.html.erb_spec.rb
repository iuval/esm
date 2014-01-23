require 'spec_helper'

describe "story_tags/index" do
  before(:each) do
    assign(:story_tags, [
      stub_model(StoryTag,
        :story => nil,
        :tag => nil
      ),
      stub_model(StoryTag,
        :story => nil,
        :tag => nil
      )
    ])
  end

  it "renders a list of story_tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
