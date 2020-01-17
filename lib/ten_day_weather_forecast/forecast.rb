class Forecast 

@@all = []
attr_accessor :datetime, :city_name, :state_code, :temp, :high_temp, :low_temp, :snow, :pop
  def initialize(attr_hash)
    attr_hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def display 
    puts "Date:#{@datetime} City_name #{@city_name} State #{@state_code} Temp #{@temp} High temp #{@high_temp} Low temp #{@low_temp} Snow #{@snow} Percipitation #{@pop}" 
  end 
end 