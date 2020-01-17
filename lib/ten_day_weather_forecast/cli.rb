

class CLI  
    def start 
  
     puts "Welcome! Enter your city and state abbreviation to get the 10 day forecast for your area"
     
     APIAdapter.weather_by_city(user_input)
     print_dates
     pick_number_for_forecast
     menu_input
    end 

    def print_dates
        Forecast.all.each.with_index(1) do |forecast, index|
          puts "#{index}. #{forecast.datetime}"
          
        end 

    end   
    
    def pick_number_for_forecast
        puts "Choose a number to pick a day for information on the day's forecast"
        puts "type 'exit' to exit program"
        menu_input 
    end 

    def menu_input
        user_input = gets.strip 
        #if user_input 
        #string must be between 1-16 
       if  user_input.to_i.between?(1,16)
        #user input must be converted to integer, we have to subtract 1 for the index number 
        then index = user_input.to_i - 1
        #We want to use user input to go in to forecast.all array to display forecast
        f = Forecast.all[index]
        f.display
       elsif user_input.to_i > 16
            puts "invalid entry"

       elsif user_input == "end"
        exit

       
        #take user input to display forecast for that day
        #if invalid it should say "invalid input"

        #call the pick_number_for_forecast method 
       end 
     menu_input
    end
     
    

    def user_input()
         gets.strip
    end 

    def print_weather
        print Forecast.all 
      
    end 

end 
 