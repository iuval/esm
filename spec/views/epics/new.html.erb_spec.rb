require 'spec_helper'

describe "epics/new" do
  before(:each) do
    assign(:epic, stub_model(Epic,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new epic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", epics_path, "post" do
      assert_select "input#epic_name[name=?]", "epic[name]"
      assert_select "textarea#epic_description[name=?]", "epic[description]"
    end
  end
end
