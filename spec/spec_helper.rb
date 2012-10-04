require "wnm_support"
require "active_support/all"
require "active_record_no_table"

config = HashWithIndifferentAccess.new({
                                           :adapter => "mysql2",
                                           :host => "127.0.0.1",
                                           :username => "root",
                                           :password => "",
                                           :database => "wnm_support_test"
                                       })

begin
  ActiveRecord::Base.establish_connection(config)
rescue
  ActiveRecord::Base.establish_connection(config.merge('database' => nil))
  ActiveRecord::Base.connection.create_database(config['database'], :charset => 'utf8', :collation => 'utf8_unicode_ci')
end

load "db/schema.rb"

RSpec.configure do |config|
  config.around do |example|
    ActiveRecord::Base.transaction do
      example.run
      raise ActiveRecord::Rollback
    end
  end
end

