# headings

def mainheading
    puts "    ██╗  ██╗ ██████╗ ██╗     ██╗██████╗  █████╗ ██╗   ██╗██╗  ██╗███████╗██╗     ██████╗ ███████╗██████╗ ".colorize(:light_cyan)
    puts "    ██║  ██║██╔═══██╗██║     ██║██╔══██╗██╔══██╗╚██╗ ██╔╝██║  ██║██╔════╝██║     ██╔══██╗██╔════╝██╔══██╗".colorize(:light_cyan)
    puts "    ███████║██║   ██║██║     ██║██║  ██║███████║ ╚████╔╝ ███████║█████╗  ██║     ██████╔╝█████╗  ██████╔╝".colorize(:light_cyan)
    puts "    ██╔══██║██║   ██║██║     ██║██║  ██║██╔══██║  ╚██╔╝  ██╔══██║██╔══╝  ██║     ██╔═══╝ ██╔══╝  ██╔══██╗".colorize(:light_cyan)
    puts "    ██║  ██║╚██████╔╝███████╗██║██████╔╝██║  ██║   ██║   ██║  ██║███████╗███████╗██║     ███████╗██║  ██║".colorize(:light_cyan)
    puts "    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝".colorize(:light_cyan)
end


# ascii art

def plane
    puts File.readlines("plane.txt")
end


# greeting messages

def greeting
    puts "Hi there!"
    puts "\nWelcome to HolidayHelper - where we help you find your perfect holiday destination!"
    sleep (2)
    puts "\nWhat is your name?"
    print ">  "
end
