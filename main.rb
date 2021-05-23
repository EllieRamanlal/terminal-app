require "artii"
require "tty-prompt"
require "colorize"

prompt = TTY::Prompt.new

heading = Artii::Base.new


def greeting
    puts "Hi there!"
    puts
    puts "Welcome to HolidayHelper - where we help you find your perfect holiday destination!"
    puts
end

def menu(prompt)
    choices = [
    {name: "Holiday destination quiz", value: 1},
    {name: "Random destination generator", value: 2},
    {name: "View previous destination recommendations", value: 3},
    {name: "Exit", value: 4}
    ]

    prompt.select("What would you like to do today?", choices)
end




#-------------------------------------------------------
# main body
#-------------------------------------------------------

system 'clear'

# HolidayHelper heading
puts heading.asciify('HolidayHelper').colorize(:light_cyan)

# airplane image
puts File.readlines("plane.txt")

# welcome message
greeting

# main menu
# loop do
#     case menu(prompt)
#     when 1
      
#     when 2
      
#     when 3
      
#     when 4
      
#     end    
#   end
