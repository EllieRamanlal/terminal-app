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

# program intro and welcome
mainheading
plane
greeting

name = gets.strip.downcase

quiz_instance = Quiz.new(name)
generator_instance = Generator.new(name)
bucketlist_instance = Bucketlist.new(name)

# main program menu
loop do
  case mainmenu(prompt)
  # Quiz
  when 1
    quiz_loop_running = true
    wait_clear(2)
    puts heading.asciify('Holiday Destination Quiz').colorize(:light_cyan)
    quiz_instance.quizwelcome
    quiz_instance.questions

  # Random generator
  when 2
    generator_loop_running = true
    wait_clear(2)
    puts heading.asciify('Random Desintation Generator').colorize(:light_cyan)
    generator_instance.picker 

  # Bucketlist
  when 3
    bucketlist_loop_running = true
    wait_clear(2)
    puts heading.asciify('Bucketlist').colorize(:light_cyan)
    # bucketlist menu
    while bucketlist_loop_running
      case bucketlistmenu(prompt)
      when 1
        bucketlist_instance.view
      when 2
        bucketlist_instance.add
      when 3
        bucketlist_instance.remove
      when 4
        bucketlist_loop_running = false 
      end
    end  

  # Exit
  when 4
    exit
  end
end
