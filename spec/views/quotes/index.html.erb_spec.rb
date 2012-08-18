require 'spec_helper'

describe "quotes/index" do
  before(:each) do
    assign(:quotes, [
      stub_model(Quote,
        :open => 1.5,
        :high => 1.5,
        :low => 1.5,
        :close => 1.5,
        :volume => 1,
        :adjClose => 1.5,
        :stock_id => 2
      ),
      stub_model(Quote,
        :open => 1.5,
        :high => 1.5,
        :low => 1.5,
        :close => 1.5,
        :volume => 1,
        :adjClose => 1.5,
        :stock_id => 2
      )
    ])
  end

  it "renders a list of quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
