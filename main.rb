require "artii"
require "tty-prompt"

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

puts heading.asciify('HolidayHelper')

puts File.readlines("plane.txt")

greeting

menu(prompt)
