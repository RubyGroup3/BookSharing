require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :name => "MyString",
      :image => "MyString",
      :pages => 1,
      :publisher => nil,
      :category => nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[name]"

      assert_select "input[name=?]", "book[image]"

      assert_select "input[name=?]", "book[pages]"

      assert_select "input[name=?]", "book[publisher_id]"

      assert_select "input[name=?]", "book[category_id]"
    end
  end
end
