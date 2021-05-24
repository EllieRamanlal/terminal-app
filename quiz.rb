class Quiz

    def initialize(name)
        @name = name
    end

    def question

        hot = ["Kauai, Hawaii", "Costa Rica", "Ho Chi Minh City, Vietnam", "Barcelona, Spain"]
        cold = ["Kvalvika Beach, Lofoten Islands, Norway", "Whistler, Canada", "kyoto, Japan", "Prague, Czech Republic"]

        beach = ["Kauai, Hawaii", "Kvalvika Beach, Lofoten Islands, Norway"]
        adventure = ["Costa Rica", "Whistler, Canada"]
        culture = ["Ho Chi Minh City, Vietnam", "kyoto, Japan"]
        nightlife = ["Barcelona, Spain", "Prague, Czech Republic"]

        system 'clear'

        puts "Looks like you're ready to find a destination for your next holiday!"
        sleep(3)
        puts "\nAll you need to do is answer a couple of questions - and we'll find the perfect destination for you!"
        sleep(4)

        prompt = TTY::Prompt.new(active_color: :cyan)


        choices = [
            {name: "I want that summer sun", value: 1},
            {name: "Get me in my winter woolies", value: 2},
        ]
        weather = prompt.select("\n\nFirstly, what is your preference for weather?\n", choices)
        sleep (2)


        choices = [
            {name: "Beach – Time to relax", value: 1},
            {name: "Adventure – Let’s get active", value: 2},
            {name: "Culture – show me the history", value: 3},
            {name: "Nightlife – time to get loose", value: 4},
        ]
        vibe = prompt.select("\n\nWhat kinds of activities would you like to be doing on your holiday\n", choices)

        system 'clear'

        puts "Based on your preferences, we think you'd love to visit the following destination..."
        puts " "

        sleep (3)

        if weather == 1 && vibe == 1
            puts hot & beach
        elsif weather == 1 && vibe == 2
            puts hot & adventure
        elsif weather == 1 && vibe == 3
            puts hot & culture
        elsif weather == 1 && vibe == 4
            puts hot & nightlife
        elsif weather == 2 && vibe == 1
            puts cold & beach
        elsif weather == 2 && vibe == 2
            puts cold & adventure
        elsif weather == 2 && vibe == 3
            puts cold & culture
        elsif weather == 2 && vibe == 4
            puts cold & nightlife
        end


    end



end
