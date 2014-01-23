require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :story => nil,
      :name => "MyString",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_story[name=?]", "task[story]"
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "input#task_state[name=?]", "task[state]"
    end
  end
end
