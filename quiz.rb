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


    end



end
