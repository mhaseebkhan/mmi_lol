require 'spec_helper'

describe List do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "has a valid factory" do
    FactoryGirl.create(:list).should be_valid
  end

  it "is invalid without a list type" do
    FactoryGirl.build(:list, list_type: nil).should_not be_valid
  end

  it "is invalid without a po" do
    FactoryGirl.build(:list, po: nil).should_not be_valid
  end

  it "is invalid without a list code" do
    FactoryGirl.build(:list, list_code: nil).should_not be_valid
  end

  it "is invalid without a list name" do
    FactoryGirl.build(:list, list_name: nil).should_not be_valid
  end

  it "is invalid without a segment" do
    FactoryGirl.build(:list, segment: nil).should_not be_valid
  end

  it "is invalid without a segment2" do
    FactoryGirl.build(:list, segment2: nil).should_not be_valid
  end

  it "is invalid without a expected quantity" do
    FactoryGirl.build(:list, expected_quantity: nil).should_not be_valid
  end

  it "is invalid if expected quantity is not an integer" do
    FactoryGirl.build(:list, expected_quantity: "abcd1234").should_not be_valid
  end

  it "is invalid if declared quantity is not an integer" do
    FactoryGirl.build(:list, declared_quantity: "abcd1234").should_not be_valid
  end

  it "is invalid if received_quantity is not an integer" do
    FactoryGirl.build(:list, received_quantity: "abcd1234").should_not be_valid
  end

  it "is invalid if converted quantity is not an integer" do
    FactoryGirl.build(:list, converted_quantity: "abcd1234").should_not be_valid
  end

end
