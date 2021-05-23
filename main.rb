require "artii"
require "tty-prompt"
require "colorize"

require_relative "random_generator"
require_relative "quiz"

prompt = TTY::Prompt.new

heading = Artii::Base.new :font => 'nancyj-underlined'


def greeting
    puts "Hi there!"
    sleep (2)
    puts
    puts "Welcome to HolidayHelper - where we help you find your perfect holiday destination!"
    sleep (2)
    puts
    puts "What is your name?"
    print ">  "
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

name = gets.strip.downcase

newquiz = Quiz.new(name)
newrandom = Random.new(name)

loop do
    puts 
    case menu(prompt)
    when 1
        newquiz.questions
    when 2
        newrandom.chooser
    when 3
    
    when 4
        
    end    
end
