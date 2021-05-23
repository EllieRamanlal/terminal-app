
require "tty-prompt"

prompt = TTY::Prompt.new

def greeting
    puts "Hello!"
    puts "Welcome to HolidayHelper!"
    puts " "
end

def menu(prompt)
    choices = [
    {name: "Find a destination for my next holiday", value: 1},
    {name: "View previous holiday recommendations", value: 2},
    {name: "Exit", value: 3}
    ]
    prompt.select("What would you like to do today?", choices)
end





#-------------------------------------------------------
# main body
#-------------------------------------------------------

system 'clear'

greeting

menu(prompt)