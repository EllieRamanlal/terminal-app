class Bucketlist

    def initialize(name)
        @name = name
        @file_path = "./lists/#{name}.txt"
        @destinationlog = []
    end

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
    


end