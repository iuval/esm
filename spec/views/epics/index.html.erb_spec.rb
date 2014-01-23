require 'spec_helper'

describe "epics/index" do
  before(:each) do
    assign(:epics, [
      stub_model(Epic,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Epic,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of epics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
