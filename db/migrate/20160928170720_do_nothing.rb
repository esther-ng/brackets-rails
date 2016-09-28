class DoNothing < ActiveRecord::Migration
  def change
    add_column(:soil_samples, :some_column, :string)
  end
end
