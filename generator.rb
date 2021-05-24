class Random

    def initialize(name)
        @name = name
    end

    def chooser
        locations = [
            "Berlin, Germany",
            "Kyoto, Japan",
            "Florence, Italy",
            "Whistler, Canada",
            "Aspen, Colorado, USA",
            "St Moritz, Switzerland",
            "Prague, Czech Republic",
            "Budapest,Hungary",
            "Amsterdam, Netherlands",
            "New York City, USA",
            "Paris, France",
            "London, UK",
            "St. Barts, The Caribbean",
            "Mykonos, Greece",
            "Crete, Greece",
            "San Paolo, Brazil",
            "Cairo City, Egypt",
            "Hoi An, Vietnam",
            "Marrakesh, Morocco",
            "Barcelona, Spain",
        ]

        system 'clear'

        country = locations.sample
        puts "We have the perfect country for you!"
        puts "We think you would love..."
        puts "#{country}!".colorize(:light_cyan)
    end

end



