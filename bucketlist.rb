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

    # To add to bucketlist
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
    


end