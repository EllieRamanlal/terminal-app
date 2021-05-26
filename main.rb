require_relative "quiz"
require_relative "generator"
require_relative "bucketlist"
require_relative "methods"

require "artii"
require "tty-prompt"
require "colorize"
require "tty-progressbar"

prompt = TTY::Prompt.new(active_color: :cyan)
prompt2 = TTY::Prompt.new(active_color: :magenta)
prompt3 = TTY::Prompt.new(active_color: :green)
prompt4 = TTY::Prompt.new(active_color: :yellow)
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
wait_clear(2)
mainheading
plane

loop do
  case mainmenu(prompt)
  # Quiz
  when 1
    quiz_loop_running = true
    wait_clear(2)
    puts heading.asciify('Holiday Destination Quiz').colorize(:magenta)
    quiz_instance.quizwelcome
    quiz_instance.questions
    # end of quiz menu
    while quiz_loop_running
      case quizmenu(prompt2)
      when 1
        wait_clear(2)
        puts heading.asciify('Holiday Destination Quiz').colorize(:magenta)
        quiz_instance.questions
      when 2
        quiz_loop_running = false
        wait_clear(2)
        mainheading
      end
    end  

  # Random generator
  when 2
    generator_loop_running = true
    wait_clear(2)
    puts heading.asciify('Random Desintation Generator').colorize(:green)
    generator_instance.picker
    # end of generator menu
    while generator_loop_running
      case generatormenu(prompt3)
      when 1
        wait_clear(2)
        puts heading.asciify('Random Desintation Generator').colorize(:green)
        generator_instance.picker
      when 2
        generator_loop_running = false
        wait_clear(2)
        mainheading
      end
    end  

  # Bucketlist
  when 3
    bucketlist_loop_running = true
    wait_clear(2)
    puts heading.asciify('Bucketlist').colorize(:yellow)
    # bucketlist menu
    while bucketlist_loop_running
      case bucketlistmenu(prompt4)
      when 1
        wait_clear(2)
        puts heading.asciify('Bucketlist').colorize(:yellow)
        bucketlist_instance.view
        sleep(3)
        # NEED TO FIX END OF BUCKETLIST MENU
        endofbucketlistmenu(prompt4)
      when 2
        bucketlist_instance.add
        endofbucketlistmenu(prompt4)
      when 3
        bucketlist_instance.remove
        endofbucketlistmenu(prompt4)
      when 4
        bucketlist_loop_running = false 
        wait_clear(2)
        mainheading
      end
    end  

  # Exit
  when 4
    exit
  end
end
