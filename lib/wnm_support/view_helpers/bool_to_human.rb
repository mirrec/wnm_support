module WnmSupport
  module ViewHelpers
    module BoolToHuman
      def bool_to_human(value)
        I18n.t(value == true ? "yes" : "no")
      end

      def bool_to_human_with_empty(value)
        return "" if value.nil?

        bool_to_human(value)
      end
    end
  end
end