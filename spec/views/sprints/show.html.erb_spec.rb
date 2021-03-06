require 'spec_helper'

describe "sprints/show" do
  before(:each) do
    @sprint = assign(:sprint, stub_model(Sprint,
      :number => 1,
      :objective => "Objective",
      :stories => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Objective/)
    rendered.should match(//)
  end
end
