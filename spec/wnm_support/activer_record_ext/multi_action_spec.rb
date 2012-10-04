require "spec_helper"

class Item < ActiveRecord::Base
  include ActiveRecordNoTable
end

describe WnmSupport::ActiveRecordExt::MultiAction do
  it "should add multi method to model" do
    Item.should respond_to :multi
  end

  it "should have default [:destroy]" do
    Item.multi.should eq [:destroy]
  end
end