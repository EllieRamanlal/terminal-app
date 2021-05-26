class Quiz

    def initialize(name)
        @name = name
    end

    def quizwelcome
        puts "\n\nLooks like you're ready to find a destination for your next holiday!"
        sleep(3)
        puts "\nAll you need to do is answer a couple of questions - and we'll find the perfect destination for you!"
        sleep(4)
    end

    def questions

        hot = ["Kauai, Hawaii", "Costa Rica", "Ho Chi Minh City, Vietnam", "Barcelona, Spain"]
        cold = ["Kvalvika Beach, Lofoten Islands, Norway", "Whistler, Canada", "kyoto, Japan", "Prague, Czech Republic"]
        beach = ["Kauai, Hawaii", "Kvalvika Beach, Lofoten Islands, Norway"]
        adventure = ["Costa Rica", "Whistler, Canada"]
        culture = ["Ho Chi Minh City, Vietnam", "kyoto, Japan"]
        nightlife = ["Barcelona, Spain", "Prague, Czech Republic"]
        prompt2 = TTY::Prompt.new(active_color: :magenta)
        heading = Artii::Base.new

        choices = [
            {name: "I want that summer sun!", value: 1},
            {name: "Get me in my winter woolies!", value: 2},
        ]
        weather = prompt2.select("\n\nFirstly, what is your preference for weather?\n", choices)

        sleep (2)

        choices = [
            {name: "Beach – Time to relax", value: 1},
            {name: "Adventure – Let’s get active", value: 2},
            {name: "Culture – show me the history", value: 3},
            {name: "Nightlife – time to get loose", value: 4},
        ]
        vibe = prompt2.select("\nWhat kinds of activities would you like to be doing on your holiday?\n", choices)

        wait_clear(2)

        puts heading.asciify('Holiday Destination Quiz').colorize(:magenta)

        puts "\nBased on your preferences, we think you'd love to visit the following destination...\n\n"

        sleep (1.5)

        bar = TTY::ProgressBar.new("[:bar]", bar_format: :block, clear: true, total: 30)
       
        30.times do
            sleep(0.1)
            bar.advance 
        end

        sleep (1)

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

        sleep (3)
        puts "\n\n\nLove this suggestion? Keep track of all your favourite destination suggestions using our Bucketlist feature! (accessed via main menu)"

        sleep(4)


    end



end
