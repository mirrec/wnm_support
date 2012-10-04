require 'spec_helper'

describe Array do
  describe "map_to_hash" do
    it "should return an hash from given array" do
      array = [
          [1, false, "string"],
          [2, true, nil]
      ]
      hash = array.map_to_hash{|item| {item.first => item.last} }
      hash.should eq({1 => "string", 2 => nil})
    end
  end

  describe "halved" do
    it "should split array in two array in half" do
      [1,2,3,4].halved.should eq [ [1, 2], [3, 4] ]
    end
  end
end