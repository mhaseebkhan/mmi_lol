require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :name => "MyText",
      :number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
