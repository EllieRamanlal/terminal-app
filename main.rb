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

if ARGV.length > 0
  flag, *rest = ARGV
  ARGV.clear
  case flag 
  when '-h'
      puts "See further documentation in readme"
      exit
  when '-v'
      puts "This program is using Ruby version: #{RUBY_VERSION}"
      exit
  when '-path'
  else
      puts "Invalid argument\n-h for program info\n-v for version info"
      exit
  end 
end 


#--------------------------------------------------------------------
# main program
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
  # CHOICE = QUIZ
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
  # CHOICE = RANDOM GENERATOR
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
  # CHOICE = BUCKETLIST
  when 3
    bucketlist_loop_running = true
    wait_clear(2)
    # Main bucketlist menu
    while bucketlist_loop_running
      puts heading.asciify('Bucketlist').colorize(:yellow)
      case bucketlistmenu(prompt4)
      # viewing bucketlist
      when 1
        wait_clear(2)
        puts heading.asciify('Bucketlist').colorize(:yellow)
        bucketlist_instance.view
        sleep(3)
        # end of bucketlist menu
        endofbucketlist_loop_running = true
        while endofbucketlist_loop_running
          case endofbucketlistmenu(prompt4)
          when 1
            wait_clear(2)
            endofbucketlist_loop_running = false
            bucketlist_loop_running = true
          when 2
            endofbucketlist_loop_running = false
            bucketlist_loop_running = false
            wait_clear(2)
            mainheading
          end
        end  
      # Adding to bucketlist
      when 2
        wait_clear(2)
        puts heading.asciify('Bucketlist').colorize(:yellow)
        bucketlist_instance.add
        # end of bucketlist menu
        endofbucketlist_loop_running = true
        while endofbucketlist_loop_running
          case endofbucketlistmenu(prompt4)
          when 1
            wait_clear(2)
            endofbucketlist_loop_running = false
            bucketlist_loop_running = true
          when 2
            endofbucketlist_loop_running = false
            bucketlist_loop_running = false
            wait_clear(2)
            mainheading
          end
        end  
      # Removing from Bucketlist
      when 3
        wait_clear(2)
        puts heading.asciify('Bucketlist').colorize(:yellow)
        bucketlist_instance.remove
        # end of bucketlist menu
        endofbucketlist_loop_running = true
        while endofbucketlist_loop_running
          case endofbucketlistmenu(prompt4)
          when 1
            wait_clear(2)
            endofbucketlist_loop_running = false
            bucketlist_loop_running = true
          when 2
            endofbucketlist_loop_running = false
            bucketlist_loop_running = false
            wait_clear(2)
            mainheading
          end
        end
      # CHOICE = EXIT
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
