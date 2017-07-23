require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :book_deal => nil,
      :user => nil,
      :rate => 1
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input[name=?]", "rating[book_deal_id]"

      assert_select "input[name=?]", "rating[user_id]"

      assert_select "input[name=?]", "rating[rate]"
    end
  end
end
