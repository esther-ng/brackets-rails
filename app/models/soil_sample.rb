class SoilSample < ActiveRecord::Base
  def self.by_city(city)
    where(location: city).order(:color)
  end
end
