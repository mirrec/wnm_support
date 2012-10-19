module WnmSupport
  module ViewHelpers
    class Railtie < Rails::Railtie
      initializer "wnm_support.view_helpers" do
        ActionView::Base.send :include, BoolToHuman
        ActionView::Base.send :include, Youtube
      end

      initializer "wnm_support.active_record_ext" do
        ActiveSupport.on_load(:active_record) do
          ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::DestroyValidation
          ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::ViewHelpers
          ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MultiAction
          ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MysqlTruncate
          ActiveRecord::Base.send :include, WnmSupport::ActiveRecordExt::MysqlOrderByField
        end
      end
    end
  end
end

