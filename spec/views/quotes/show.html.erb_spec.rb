require 'spec_helper'

describe "quotes/show" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :open => 1.5,
      :high => 1.5,
      :low => 1.5,
      :close => 1.5,
      :volume => 1,
      :adjClose => 1.5,
      :stock_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
  end
end
