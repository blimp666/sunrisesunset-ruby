class Cities
  City = Struct.new(:name, :lat, :lon, :tz)

  def self.all
    [
      City.new("Amsterdam", BigDecimal("52.3667"), BigDecimal("4.8945"), "Europe/Amsterdam"),
      City.new("Bangkok", BigDecimal("13.7563"), BigDecimal("100.5018"), "Asia/Bangkok"),
      City.new("Barcelona", BigDecimal("41.3851"), BigDecimal("2.1734"), "Europe/Madrid"),
      City.new("Berlin", BigDecimal("52.52"), BigDecimal("13.405"), "Europe/Berlin"),
      City.new("Dubai", BigDecimal("25.2048"), BigDecimal("55.2708"), "Asia/Dubai"),
      City.new("Edinburgh", BigDecimal("55.9533"), BigDecimal("-3.1883"), "Europe/London"),
      City.new("Hong Kong", BigDecimal("22.3193"), BigDecimal("114.1694"), "Asia/Hong_Kong"),
      City.new("Lisbon", BigDecimal("38.7223"), BigDecimal("-9.1393"), "Europe/Lisbon"),
      City.new("London", BigDecimal("51.5074"), BigDecimal("-0.1278"), "Europe/London"),
      City.new("Milan", BigDecimal("45.4642"), BigDecimal("9.19"), "Europe/Rome"),
      City.new("Paris", BigDecimal("48.8566"), BigDecimal("2.3522"), "Europe/Paris"),
      City.new("Rome", BigDecimal("41.9028"), BigDecimal("12.4964"), "Europe/Rome"),
      City.new("Singapore", BigDecimal("1.3521"), BigDecimal("103.8198"), "Asia/Singapore"),
      City.new("Sydney", BigDecimal("-33.8688"), BigDecimal("151.2093"), "Australia/Sydney"),
      City.new("Tokyo", BigDecimal("35.6762"), BigDecimal("139.6503"), "Asia/Tokyo"),
      City.new("Venice", BigDecimal("45.4408"), BigDecimal("12.3155"), "Europe/Rome"),
      City.new("Verona", BigDecimal("45.4384"), BigDecimal("10.9916"), "Europe/Rome"),
    ]
  end
end
