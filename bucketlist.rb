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
    


end