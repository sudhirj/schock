require 'spec_helper'

describe "chocolates/index.html.erb" do
  before(:each) do
    assign(:chocolates, [
      stub_model(Chocolate,
        :name => "Choc1",
        :desc => "Desc1"
      ),
      stub_model(Chocolate,
        :name => "Choc2",
        :desc => "Desc2"
      )
    ])
  end

  it "renders a list of chocolates" do
    render
    assert_select "section.chocolate", :count => 2
  end
end
