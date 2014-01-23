require 'spec_helper'

describe "epics/edit" do
  before(:each) do
    @epic = assign(:epic, stub_model(Epic,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit epic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", epic_path(@epic), "post" do
      assert_select "input#epic_name[name=?]", "epic[name]"
      assert_select "textarea#epic_description[name=?]", "epic[description]"
    end
  end
end
