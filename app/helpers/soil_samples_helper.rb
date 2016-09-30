module SoilSamplesHelper
  def describe(sample)
    "Sample from #{sample.location} collected by #{sample.scientist}"
  end
end
