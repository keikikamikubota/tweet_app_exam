
ActiveRecord::Schema.define(version: 2023_07_19_063413) do
  enable_extension "plpgsql"
  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
