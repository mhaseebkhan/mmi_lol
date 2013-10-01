require 'spec_helper'

describe "lists/show" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :job_id => 1,
      :name => "MyText",
      :type => "Type",
      :code => "MyText",
      :status => "Status",
      :po => 2,
      :segment => "MyText",
      :segment2 => "MyText",
      :expected_quantity => "9.99",
      :declared_quantity => "9.99",
      :received_quantity => "9.99",
      :converted_quantity => "Converted Quantity",
      :approved => false,
      :approved_by => 3,
      :canceled => false,
      :canceled_by => 4,
      :conversion_rejects => "Conversion Rejects",
      :comments => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Converted Quantity/)
    rendered.should match(/false/)
    rendered.should match(/3/)
    rendered.should match(/false/)
    rendered.should match(/4/)
    rendered.should match(/Conversion Rejects/)
    rendered.should match(/MyText/)
  end
end
