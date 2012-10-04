require 'spec_helper'

describe String do
  describe "to_a" do
    it "should wrap string in an array" do
      "string".to_a.should eq ["string"]
    end
  end

  describe "is_integer?" do
    it "should return true if string is a integer in string" do
      "123".is_integer?.should eq true
    end

    it "should return false if string has other chara" do
      "123a".is_integer?.should eq false
      "12.3".is_integer?.should eq false
      "".is_integer?.should eq false
    end
  end

  describe "max_words" do
    let(:sentence) { "Hello I am a boy." }

    it "should display hole sentence if there is less or equal number of words" do
      sentence.max_words(10).should eq sentence
    end

    it "should cut sentence to given number of words and add ending" do
      sentence.max_words(2).should eq "Hello I..."
      sentence.max_words(2, ".").should eq "Hello I."
    end
  end
end