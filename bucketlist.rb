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
            puts "\nLooks like you haven't added any destinations yet!\n"
            
          end
        else
          create
        end 
    end

    # To add destination to bucketlist
    def add
      system 'clear'
      puts  "\nAdd a destination to your bucketlist:\n"
      puts
      print "> "
      dest = gets.strip
      @destinationlog = file_to_array(@file_path)
      @destinationlog << dest
      array_to_file(@destinationlog)
      puts "\nYour destination has been added to your list!\n"
    end

    # To remove destination from bucketlist
    def remove
      system 'clear'
      puts "Remove a destination from your bucketlist:\n"
      @destinationlog = file_to_array(@file_path)
      view
      puts "Enter the destination number that you'd like to remove:\n"
      print "> "
      dest_no = gets.to_i - 1
      @destinationlog.delete_at dest_no
      puts "\nThe destination has now been removed from your bucketlist\n"
      array_to_file(@destinationlog)
    end

    private

    def file_empty?
      File.zero?(@file_path)
    end

    def file_exist?
      File.exist?(@file_path)
    end

    def create
      puts "\nYou haven't added any destinations to your list yet!\n"
      file = File.new(@file_path, 'w')
      file.close
    end

    def file_to_array(path) 
    # read file content into an array
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
    end # file_to_array

    def array_to_file(array)
      File.open(@file_path, 'w') do |file|
        array.each do |line|
          file.puts line
        end
      end
    end
    
end