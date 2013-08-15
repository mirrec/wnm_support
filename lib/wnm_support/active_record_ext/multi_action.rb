module WnmSupport
  module ActiveRecordExt
    module MultiAction
      extend ActiveSupport::Concern

      module ClassMethods
        def multi
          []
        end
      end
    end
  end
end