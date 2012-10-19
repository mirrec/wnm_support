require "wnm_support/version"

require "active_support/concern"

require "wnm_support/core_ext/class_exists"
require "wnm_support/core_ext/to_boolean"
require "wnm_support/core_ext/to_integer"
require "wnm_support/core_ext/to_array"
require "wnm_support/core_ext/is_integer"
require "wnm_support/core_ext/max_words"
require "wnm_support/core_ext/map_to_hash"
require "wnm_support/core_ext/halved"

require "active_record"
require "wnm_support/active_record_ext/destroy_validation"
require "wnm_support/active_record_ext/view_helpers"
require "wnm_support/active_record_ext/multi_action"
require "wnm_support/active_record_ext/mysql_truncate"
require "wnm_support/active_record_ext/mysql_order_by_field"

require "wnm_support/view_helpers/bool_to_human"
require "wnm_support/view_helpers/youtube"

require "wnm_support/railtie" if defined?(Rails)