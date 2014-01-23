require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :story => nil,
      :name => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "input#task_story[name=?]", "task[story]"
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "input#task_state[name=?]", "task[state]"
    end
  end
end
