require 'rails_helper'

RSpec.describe "book_deals/show", type: :view do
  before(:each) do
    @book_deal = assign(:book_deal, BookDeal.create!(
      :book => nil,
      :user => nil,
      :condition => 2,
      :status => 3,
      :edition => "Edition",
      :description => "MyText",
      :price => "9.99",
      :deal_id => "",
      :deal_type => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Edition/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(/4/)
  end
end
