require 'spec_helper'

describe "chocolates/new.html.erb" do
  before(:each) do
    assign(:chocolate, stub_model(Chocolate,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new chocolate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chocolates_path, :method => "post" do
      assert_select "input#chocolate_name", :name => "chocolate[name]"
      assert_select "textarea#chocolate_desc", :name => "chocolate[desc]"
    end
  end
end
