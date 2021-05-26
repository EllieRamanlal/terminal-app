class Generator

    def initialize(name)
        @name = name
    end

    def picker
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

        puts "fetching random destination..."
        puts " "

        bar = TTY::ProgressBar.new("[:bar]", bar_format: :block, clear: true, total: 30)

        sleep (1.5)
       
        30.times do
            sleep(0.1)
            bar.advance 
        end

        country = locations.sample
        puts " "
        puts "We have found a destination for you!"
        sleep (1)
        puts " "
        puts " "
        puts "We think you would love..."
        sleep (2)
        puts " "
        puts "#{country}!".colorize(:light_cyan)
        sleep (2)
        puts "\nLove this suggestions? Keep track of all your favourite destination suggestions using our Bucketlist feature!"
        sleep (3)
        puts " "
        puts " "
    end

end



