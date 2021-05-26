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


# menus

def mainmenu(prompt)
    choices = [
    {name: "Holiday destination quiz", value: 1},
    {name: "Random destination generator", value: 2},
    {name: "View/edit bucketlist destinations", value: 3},
    {name: "Exit", value: 4}
    ]

    prompt.select("What would you like to do today?", choices)
end
