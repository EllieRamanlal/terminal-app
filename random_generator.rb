class Random

    def initialize(name)
        @name = name
    end

    def chooser
        locations = ["spain", "portugal", "canada", "USA", "Italy"]

        system 'clear'
        country = locations.sample
        puts "We have the perfect country for you!"
        sleep (1)
        puts
        puts "We think you would love..."
        sleep (2)
        puts
        puts "#{country}!".colorize(:light_cyan)
        sleep (2)
        puts " "
    end

end



