require 'spec_helper'

describe "chocolates/show.html.erb" do
  before(:each) do
    @chocolate = assign(:chocolate, stub_model(Chocolate,
      :name => "Name",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
