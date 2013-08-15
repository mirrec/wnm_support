require "spec_helper"

ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MultiAction

class Item < ActiveRecord::Base
  include ActiveRecordNoTable
end

describe WnmSupport::ActiveRecordExt::MultiAction do
  it "should add multi method to model" do
    Item.should respond_to :multi
  end

  it "should return empty array by default" do
    Item.multi.should eq([])
  end
end