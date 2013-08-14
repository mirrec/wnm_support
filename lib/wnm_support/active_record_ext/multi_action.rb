module WnmSupport
  module ActiveRecordExt
    module MultiAction
      extend ActiveSupport::Concern

      class ActionButton
        attr_accessor :action, :icon

        def initialize(attributes = {:action => nil, :icon => nil})
          attributes.each do |k, v|
            instance_variable_set("@#{k}", v)
          end
        end


      end

      module ClassMethods
        def multi
          [ActionButton.new(:action => "destroy", :icon => "icon-remove")]
        end
      end
    end
  end
end