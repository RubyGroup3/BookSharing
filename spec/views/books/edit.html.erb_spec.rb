require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :name => "MyString",
      :image => "MyString",
      :pages => 1,
      :publisher => nil,
      :category => nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[name]"

      assert_select "input[name=?]", "book[image]"

      assert_select "input[name=?]", "book[pages]"

      assert_select "input[name=?]", "book[publisher_id]"

      assert_select "input[name=?]", "book[category_id]"
    end
  end
end
