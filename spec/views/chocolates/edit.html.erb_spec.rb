require 'spec_helper'

describe "chocolates/edit.html.erb" do
  before(:each) do
    @chocolate = assign(:chocolate, stub_model(Chocolate,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit chocolate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chocolates_path(@chocolate), :method => "post" do
      assert_select "input#chocolate_name", :name => "chocolate[name]"
      assert_select "textarea#chocolate_desc", :name => "chocolate[desc]"
    end
  end
end
