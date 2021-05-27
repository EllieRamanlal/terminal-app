class Bucketlist

    def initialize(name)
        @name = name
        @file_path = "./lists/#{name}.txt"
        @destinationlog = []
    end

    # To view bucketlist
    def view
      puts "\n#{@name.capitalize}'s bucketlist of destinations:\n"

      if file_exist?
        unless file_empty?
          File.open(@file_path, 'r') do |file|
            file.each_line do |line|
              puts "#{file.lineno}. #{line}"
            end
          end
        else
          sleep(2)
          puts "\n\nLooks like you haven't started a bucket list yet!\n"
        end
      else
        create
      end 
    end

    # To add to bucketlist
    def add
      puts  "\nAdd a destination to your bucketlist:\n"
      puts
      print "> "
      dest = gets.strip
      @destinationlog = file_to_array(@file_path)
      @destinationlog << dest
      array_to_file(@destinationlog)
      sleep(2)
      puts "\nYour destination has been added to your list!\n"
    end

    # to remove from bucketlist
    def remove
      puts "Remove a destination from your bucketlist:\n"
      @destinationlog = file_to_array(@file_path)
      view
      sleep(2)
      puts "\nEnter the destination number that you'd like to remove:\n"
      print "> "
      dest_no = gets.to_i - 1
      if dest_no > @destinationlog.size - 1 || dest_no < 1
        puts "\nuh oh! That's not a valid number! Please select continue to view/edit your bucketlist, then try again!\n"
      else
        sleep(2)
        @destinationlog.delete_at dest_no
        puts "\nThe destination has now been removed from your bucketlist\n"
        array_to_file(@destinationlog)
      end
    end

    private

    def file_empty?
      File.zero?(@file_path)
    end

    def file_exist?
      File.exist?(@file_path)
    end

    def create
      puts "\nLooks like you haven't created a bucketlist yet! No worries, we have started one for you!\n"
      file = File.new(@file_path, 'w')
      file.close
    end

    def file_to_array(path) 
      array = []
      if file_exist?
        File.open(path, 'r') do |file|
          file.each_line do |line|
            array << line.strip
          end
        end
      else
        create
      end
      array
    end

    def array_to_file(array)
      File.open(@file_path, 'w') do |file|
        array.each do |line|
          file.puts line
        end
      end
    end
    
end