require 'spec_helper'

describe "sprints/index" do
  before(:each) do
    assign(:sprints, [
      stub_model(Sprint,
        :number => 1,
        :objective => "Objective",
        :stories => ""
      ),
      stub_model(Sprint,
        :number => 1,
        :objective => "Objective",
        :stories => ""
      )
    ])
  end

  it "renders a list of sprints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Objective".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
