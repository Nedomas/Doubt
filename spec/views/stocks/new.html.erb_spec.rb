require 'spec_helper'

describe "stocks/new" do
  before(:each) do
    assign(:stock, stub_model(Stock,
      :symbol => "MyString"
    ).as_new_record)
  end

  it "renders new stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stocks_path, :method => "post" do
      assert_select "input#stock_symbol", :name => "stock[symbol]"
    end
  end
end
