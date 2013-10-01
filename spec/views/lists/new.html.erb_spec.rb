require 'spec_helper'

describe "lists/new" do
  before(:each) do
    assign(:list, stub_model(List,
      :job_id => 1,
      :name => "MyText",
      :type => "",
      :code => "MyText",
      :status => "MyString",
      :po => 1,
      :segment => "MyText",
      :segment2 => "MyText",
      :expected_quantity => "9.99",
      :declared_quantity => "9.99",
      :received_quantity => "9.99",
      :converted_quantity => "MyString",
      :approved => false,
      :approved_by => 1,
      :canceled => false,
      :canceled_by => 1,
      :conversion_rejects => "MyString",
      :comments => "MyText"
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lists_path, "post" do
      assert_select "input#list_job_id[name=?]", "list[job_id]"
      assert_select "textarea#list_name[name=?]", "list[name]"
      assert_select "input#list_type[name=?]", "list[type]"
      assert_select "textarea#list_code[name=?]", "list[code]"
      assert_select "input#list_status[name=?]", "list[status]"
      assert_select "input#list_po[name=?]", "list[po]"
      assert_select "textarea#list_segment[name=?]", "list[segment]"
      assert_select "textarea#list_segment2[name=?]", "list[segment2]"
      assert_select "input#list_expected_quantity[name=?]", "list[expected_quantity]"
      assert_select "input#list_declared_quantity[name=?]", "list[declared_quantity]"
      assert_select "input#list_received_quantity[name=?]", "list[received_quantity]"
      assert_select "input#list_converted_quantity[name=?]", "list[converted_quantity]"
      assert_select "input#list_approved[name=?]", "list[approved]"
      assert_select "input#list_approved_by[name=?]", "list[approved_by]"
      assert_select "input#list_canceled[name=?]", "list[canceled]"
      assert_select "input#list_canceled_by[name=?]", "list[canceled_by]"
      assert_select "input#list_conversion_rejects[name=?]", "list[conversion_rejects]"
      assert_select "textarea#list_comments[name=?]", "list[comments]"
    end
  end
end
