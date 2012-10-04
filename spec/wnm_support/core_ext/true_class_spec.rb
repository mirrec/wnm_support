require 'spec_helper'

describe TrueClass do
  describe "to_bool" do
    it "should return true" do
      true.to_bool.should eq true
      true.to_b.should eq true
    end
  end

  describe "to_integer" do
    it "should return 1" do
      true.to_integer.should eq 1
      true.to_i.should eq 1
    end
  end
end