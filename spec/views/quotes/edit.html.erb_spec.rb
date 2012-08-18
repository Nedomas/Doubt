require 'spec_helper'

describe "quotes/edit" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :open => 1.5,
      :high => 1.5,
      :low => 1.5,
      :close => 1.5,
      :volume => 1,
      :adjClose => 1.5,
      :stock_id => 1
    ))
  end

  it "renders the edit quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quotes_path(@quote), :method => "post" do
      assert_select "input#quote_open", :name => "quote[open]"
      assert_select "input#quote_high", :name => "quote[high]"
      assert_select "input#quote_low", :name => "quote[low]"
      assert_select "input#quote_close", :name => "quote[close]"
      assert_select "input#quote_volume", :name => "quote[volume]"
      assert_select "input#quote_adjClose", :name => "quote[adjClose]"
      assert_select "input#quote_stock_id", :name => "quote[stock_id]"
    end
  end
end
