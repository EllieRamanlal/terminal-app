require_relative "quiz"
require_relative "generator"
require_relative "bucketlist"
require_relative "methods"

require "artii"
require "tty-prompt"
require "colorize"
require "tty-progressbar"


prompt = TTY::Prompt.new
heading = Artii::Base.new




#--------------------------------------------------------------------
# start of program
#--------------------------------------------------------------------

system 'clear'

mainheading
plane
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
