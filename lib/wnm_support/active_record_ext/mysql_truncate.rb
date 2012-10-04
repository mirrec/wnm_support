module WnmSupport
  module ActiveRecordExt
    module MysqlTruncate
      extend ActiveSupport::Concern

      module ClassMethods
        def truncate
          self.connection.execute("TRUNCATE TABLE `#{self.table_name}`")
        end
      end
    end
  end
end
