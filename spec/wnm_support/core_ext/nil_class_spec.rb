require 'spec_helper'

describe NilClass do
  describe "to_bool" do
    it "should return false" do
      nil.to_bool.should eq false
      nil.to_b.should eq false
    end
  end
end