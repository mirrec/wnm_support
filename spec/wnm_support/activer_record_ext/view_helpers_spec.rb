require "spec_helper"

class Item < ActiveRecord::Base
  include ActiveRecordNoTable
end

describe WnmSupport::ActiveRecordExt::ViewHelpers do
  it "should add helpers method to each model" do
    Item.new.should respond_to :helpers
  end
end