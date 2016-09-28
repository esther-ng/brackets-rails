class CreateSoilSamples < ActiveRecord::Migration
  def change
    create_table :soil_samples do |t|
      t.string :location
      t.string :scientist
      t.date :collection_date
      t.boolean :is_wet
      t.integer :density

      t.timestamps null: false
    end
  end
end
