require 'rails_helper'

RSpec.describe "book_deals/edit", type: :view do
  before(:each) do
    @book_deal = assign(:book_deal, BookDeal.create!(
      :book => nil,
      :user => nil,
      :condition => 1,
      :status => 1,
      :edition => "MyString",
      :description => "MyText",
      :price => "9.99",
      :deal_id => "",
      :deal_type => 1
    ))
  end

  it "renders the edit book_deal form" do
    render

    assert_select "form[action=?][method=?]", book_deal_path(@book_deal), "post" do

      assert_select "input[name=?]", "book_deal[book_id]"

      assert_select "input[name=?]", "book_deal[user_id]"

      assert_select "input[name=?]", "book_deal[condition]"

      assert_select "input[name=?]", "book_deal[status]"

      assert_select "input[name=?]", "book_deal[edition]"

      assert_select "textarea[name=?]", "book_deal[description]"

      assert_select "input[name=?]", "book_deal[price]"

      assert_select "input[name=?]", "book_deal[deal_id]"

      assert_select "input[name=?]", "book_deal[deal_type]"
    end
  end
end
