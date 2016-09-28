class AddColorToSoilSample < ActiveRecord::Migration
  def change
    add_column(:soil_samples, :color, :string)
  end
end
