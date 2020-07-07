require "csv"
require "date"
require_relative "../lib/solareventcalculator.rb"
require_relative "./cities.rb"

SunTime = Struct.new(:date, :sunrise, :sunset)

def compute_sun_times(name, lat, lon, tz, year)
  from = Date.new(year, 01, 01)
  to = Date.new(year, 12, 31)

  sun_times = (from..to).map do |date|
    calc = SolarEventCalculator.new(date, lat, lon)
    sunrise = calc.compute_official_sunrise(tz)
    sunset = calc.compute_official_sunset(tz)

    SunTime.new(date, sunrise, sunset)
  end
end

if __FILE__ == $0
  year = Date.today.year

  cities_with_suntimes = Cities.all.map do |city|
    sun_times = compute_sun_times(city.name, city.lat, city.lon, city.tz, year)
    [city, sun_times]
  end

  file = "suntimes.csv"
  CSV.open(file, "w") do |csv|
    csv << ["city", "timezone", "date", "sunrise", "sunset"]

    cities_with_suntimes.each do |city, sun_times|
      sun_times.each do |st|
        csv << [city.name, city.tz, st.date, st.sunrise, st.sunset]
      end
    end
  end

  puts "output #{file} sunrise and sunset times for #{cities_with_suntimes.count} cities"
end
