class CreatePostOffices < ActiveRecord::Migration
  def change
    create_table :post_offices do |t|
      t.string "name", null: false
      t.string "location"
      t.integer "num_employees"
      t.datetime "created_at", null: false
      t.datetime "udpated_at", null: false

      t.timestamps null: false
    end
  end
end
