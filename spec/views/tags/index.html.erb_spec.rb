require 'spec_helper'

describe "tags/index" do
  before(:each) do
    assign(:tags, [
      stub_model(Tag,
        :name => "Name",
        :description => "MyText",
        :color => "Color"
      ),
      stub_model(Tag,
        :name => "Name",
        :description => "MyText",
        :color => "Color"
      )
    ])
  end

  it "renders a list of tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
