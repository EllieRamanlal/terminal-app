require_relative "generator"
require_relative "quiz"

require "artii"
require "tty-prompt"
require "colorize"
require "tty-progressbar"


prompt = TTY::Prompt.new
heading = Artii::Base.new :font => 'nancyj-underlined'


def greeting
    puts "Hi there!"
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

quiz_instance = Quiz.new(name)
generator_instance = Generator.new(name)


loop do
  case menu(prompt)
  when 1
    quiz_instance.questions
  when 2
    generator_instance.picker
  when 3

  when 4
  end
end
