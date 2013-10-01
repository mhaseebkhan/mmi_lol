require 'spec_helper'

describe "lists/index" do
  before(:each) do
    assign(:lists, [
      stub_model(List,
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
      ),
      stub_model(List,
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
      )
    ])
  end

  it "renders a list of lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Converted Quantity".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Conversion Rejects".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
