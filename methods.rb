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

def quizmenu(prompt)
    choices = [
    {name: "Do quiz again", value: 1},
    {name: "Back to main menu", value: 2},
    ]

    prompt.select("What would you like to do now?\n", choices)
end

def generatormenu(prompt)
    choices = [
    {name: "Generate another random destination", value: 1},
    {name: "Back to main menu", value: 2},
    ]

    prompt.select("What would you like to do now?\n", choices)
end

def bucketlistmenu(prompt)
    choices = [
    {name: "View my bucketlist", value: 1},
    {name: "Add destination to bucketlist", value: 2},
    {name: "Remove destination from bucketlist", value: 3},
    {name: "Back to main menu", value: 4}
    ]

    prompt.select("\nWhat would you like to with your bucketlist?\n", choices)
end

def endofbucketlistmenu(prompt)
    choices = [
    {name: "Continue to view/edit bucketlist", value: 1},
    {name: "Back to main menu", value: 2},
    ]

    prompt.select("\nWhat would you like to do now?\n", choices)
end
