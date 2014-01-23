require 'spec_helper'

describe "stories/show" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :summary => "MyText",
      :detail => "MyText",
      :user => nil,
      :points => "Points",
      :position => 1,
      :epic => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/Points/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
