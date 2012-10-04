require 'spec_helper'

describe "class_exists?" do
  it "should return true if given class exists" do
    class MyTest

    end

    class_exists?("MyTest").should eq true
  end

  it "should return false if given class does not exists" do
    class_exists?("NoExist").should eq false
  end
end