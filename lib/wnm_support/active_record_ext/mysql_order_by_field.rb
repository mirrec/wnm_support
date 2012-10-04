module WnmSupport
  module ActiveRecordExt
    module MysqlOrderByField
      extend ActiveSupport::Concern

      module ClassMethods
        def order_by_field(column, values = [])
          return scoped if values.blank?

          order("FIELD (`#{table_name}`.`#{column}`, #{values.map(&:to_i).join(", ")})")
        end
      end
    end
  end
end
