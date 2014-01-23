require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :comment => "MyText",
      :commentable => nil
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "textarea#comment_comment[name=?]", "comment[comment]"
      assert_select "input#comment_commentable[name=?]", "comment[commentable]"
    end
  end
end
