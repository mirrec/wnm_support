module WnmSupport
  module ActiveRecordExt
    module DestroyValidation
      extend ActiveSupport::Concern

      included do
        before_destroy :check_before_destroy
      end

      def can_destroy?
        false
      end

      def check_before_destroy
        if can_destroy?
          true
        else
          errors.add(:base, "not allowed")
          false
        end
      end
    end
  end
end
