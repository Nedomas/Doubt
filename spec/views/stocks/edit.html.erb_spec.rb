require 'spec_helper'

describe "stocks/edit" do
  before(:each) do
    @stock = assign(:stock, stub_model(Stock,
      :symbol => "MyString"
    ))
  end

  it "renders the edit stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stocks_path(@stock), :method => "post" do
      assert_select "input#stock_symbol", :name => "stock[symbol]"
    end
  end
end
