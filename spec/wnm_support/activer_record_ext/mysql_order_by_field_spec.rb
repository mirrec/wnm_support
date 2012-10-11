require 'spec_helper'

ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MysqlOrderByField

class News < ActiveRecord::Base

end

describe WnmSupport::ActiveRecordExt::MysqlOrderByField do
  it "should add order_by_field method for class" do
    News.should respond_to :order_by_field
  end

  it "should return scope if second argument is missing or empty" do
    News.order_by_field(:id).should be_kind_of ActiveRecord::Relation
    News.order_by_field(:id, []).should be_kind_of ActiveRecord::Relation
    News.order_by_field(:id, nil).should be_kind_of ActiveRecord::Relation
  end

  it "should return records in order given by column and values" do
    news_1 = News.create!(:name => "login 1")
    news_2 = News.create!(:name => "login 2")

    News.order_by_field(:id, [news_1.id, news_2.id]).map(&:id).should eq [news_1.id, news_2.id]
    News.order_by_field(:id, [news_2.id, news_1.id]).map(&:id).should eq [news_2.id, news_1.id]
  end
end