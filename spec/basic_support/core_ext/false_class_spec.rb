require 'spec_helper'

describe FalseClass do
  describe "to_bool" do
    it "should return false" do
      false.to_bool.should eq false
      false.to_b.should eq false
    end
  end

  describe "to_integer" do
    it "should return 0" do
      false.to_integer.should eq 0
      false.to_i.should eq 0
    end
  end
end
