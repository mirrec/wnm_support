require "spec_helper"

class MyHelper
  include WnmSupport::ViewHelpers::BoolToHuman
end

describe WnmSupport::ViewHelpers::BoolToHuman do
  let(:helper) { MyHelper.new }

  describe "bool_to_human" do
    it "should call translate with yes if value is true" do
      I18n.should_receive(:t).with("yes").and_return("yes")

      helper.bool_to_human(true).should eq "yes"
    end

    it "should call translate with no if value is false" do
      I18n.should_receive(:t).with("no").and_return("no")

      helper.bool_to_human(false).should eq "no"
    end

    it "should call translate with no if value is nil" do
      I18n.should_receive(:t).with("no").and_return("no")

      helper.bool_to_human(nil).should eq "no"
    end
  end

  describe "bool_to_human_with_empty" do
    it "should return empty string if value is nil" do
      helper.bool_to_human_with_empty(nil).should eq ""
    end

    it "should call bool_to_human if value is true" do
      helper.should_receive(:bool_to_human).with(true).and_return("yes")
      helper.bool_to_human_with_empty(true).should eq "yes"
    end

    it "should call bool_to_human if value is false" do
      helper.should_receive(:bool_to_human).with(false).and_return("no")
      helper.bool_to_human_with_empty(false).should eq "no"
    end
  end
end
