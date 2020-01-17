class APIAdapter

   def self.weather_by_city(location)
    url = "https://api.weatherbit.io/v2.0/forecast/daily?city=#{location}&key=#{ENV['API_KEY']}"
    doc = RestClient.get(url)
    weather_hash = JSON.parse(doc.body)
    weather_hash["data"].each do |forecast_hash|
      forecast_hash["city_name"] = weather_hash["city_name"]
      forecast_hash["state_code"] = weather_hash["state_code"]
      Forecast.new(forecast_hash)
       

    
    end 
   end 
   
end 