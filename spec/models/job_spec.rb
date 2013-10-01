require 'spec_helper'

describe Job do
  #pending "add some examples to (or delete) #{__FILE__}"


  it "has a valid factory" do
    FactoryGirl.create(:job).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:job, name: nil).should_not be_valid
  end

  it "is invalid without a number" do
    FactoryGirl.build(:job, number: nil).should_not be_valid
  end

  it "is invalid if number is not an integer" do
    FactoryGirl.build(:job, number: "abcd1234").should_not be_valid
  end


  it "should have many lists" do
    t = Job.reflect_on_association(:lists)
    t.macro.should == :has_many
  end

end
