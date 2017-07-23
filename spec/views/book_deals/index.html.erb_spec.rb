require 'rails_helper'

RSpec.describe "book_deals/index", type: :view do
  before(:each) do
    assign(:book_deals, [
      BookDeal.create!(
        :book => nil,
        :user => nil,
        :condition => 2,
        :status => 3,
        :edition => "Edition",
        :description => "MyText",
        :price => "9.99",
        :deal_id => "",
        :deal_type => 4
      ),
      BookDeal.create!(
        :book => nil,
        :user => nil,
        :condition => 2,
        :status => 3,
        :edition => "Edition",
        :description => "MyText",
        :price => "9.99",
        :deal_id => "",
        :deal_type => 4
      )
    ])
  end

  it "renders a list of book_deals" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
