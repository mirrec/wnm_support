require "spec_helper"

ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MultiAction

class Item < ActiveRecord::Base
  include ActiveRecordNoTable
end

describe WnmSupport::ActiveRecordExt::MultiAction do
  it "should add multi method to model" do
    Item.should respond_to :multi
  end

  it "should have default [:ActionButton]" do
    Item.multi.first.instance_of?(WnmSupport::ActiveRecordExt::MultiAction::ActionButton).should be_true
  end
end