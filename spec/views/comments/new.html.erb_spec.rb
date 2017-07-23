require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :book_deal => nil,
      :user => nil,
      :content => "MyText"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[book_deal_id]"

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "textarea[name=?]", "comment[content]"
    end
  end
end
