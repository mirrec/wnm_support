require 'spec_helper'

class Item < ActiveRecord::Base
  include ActiveRecordNoTable
end

class News < ActiveRecord::Base

end

describe WnmSupport::ActiveRecordExt::DestroyValidation do
  let(:news) { News.create!(:name => "login") }
  it "should add can_destroy? to model" do
    Item.new.should respond_to :can_destroy?
  end

  it "should return false be default" do
    Item.new.can_destroy?.should be_false
  end

  it "should call can_destroy when it is destroying record" do
    news.should_receive(:can_destroy?)
    news.destroy
  end

  it "should not destroy record when can_destroy? return false" do
    news.should_receive(:can_destroy?).and_return(false)
    news.destroy.should be_false
    News.find_by_id(news.id).should be
  end

  it "should destroy record when can_destroy? return true" do
    news.should_receive(:can_destroy?).and_return(true)
    news.destroy.should be_true
    News.find_by_id(news.id).should be_nil
  end
end