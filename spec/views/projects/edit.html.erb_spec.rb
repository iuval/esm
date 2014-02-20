require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :team_members => nil,
      :client => nil,
      :master => nil,
      :stories => "",
      :sprints => nil,
      :velocity => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_team_members[name=?]", "project[team_members]"
      assert_select "input#project_client[name=?]", "project[client]"
      assert_select "input#project_master[name=?]", "project[master]"
      assert_select "input#project_stories[name=?]", "project[stories]"
      assert_select "input#project_sprints[name=?]", "project[sprints]"
      assert_select "input#project_velocity[name=?]", "project[velocity]"
    end
  end
end
