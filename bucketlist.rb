class Bucketlist

    def initialize(name)
        @name = name
        @file_path = "./lists/#{name}.txt"
        @destinationlog = []
    end
    


end