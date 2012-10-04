require 'spec_helper'

describe Integer do
  describe "to_bool" do
    it "should return false if integer is zero" do
      0.to_bool.should eq false
      0.to_b.should eq false
    end

    it "should return true if integer is not zero" do
      1.to_bool.should eq true
      1.to_b.should eq true

      -1.to_bool.should eq true
      -1.to_b.should eq true
    end
  end

  describe "to_a" do
    it "should wrap integer in array" do
      1.to_a.should eq [1]
    end
  end

end