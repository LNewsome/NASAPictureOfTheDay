class NasaApi < ApplicationRecord
  def self.get_api_info
    JSON.parse Net::HTTP.get(URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"))
  end
end
