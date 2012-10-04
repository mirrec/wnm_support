ActiveRecord::Schema.define do
  create_table "news", :force => true do |t|
    t.integer "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
end
