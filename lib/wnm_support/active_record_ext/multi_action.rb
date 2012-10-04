module WnmSupport
  module ActiveRecordExt
    module MultiAction
      extend ActiveSupport::Concern

      module ClassMethods
        def multi
          [:destroy]
        end
      end
    end
  end
end
