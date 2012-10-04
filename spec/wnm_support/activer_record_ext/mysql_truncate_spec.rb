require 'spec_helper'

class News < ActiveRecord::Base

end

describe WnmSupport::ActiveRecordExt::MysqlTruncate do

  it "should add truncate method for class" do
    News.should respond_to :truncate
  end

  it "should destroy all records from database" do
    News.create!(:name => "login 1")
    News.create!(:name => "login 2")

    News.should have(2).records
    News.truncate
    News.should have(0).records
  end
end