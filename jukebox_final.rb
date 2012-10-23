# Current errors:
# 1. Asks the entry question twice

# Need to add:
# 1. In play add list run "list"
# 2. Allow to run the music by index

@@songs = [
    "The Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "The Phoenix - Consolation Prizes"
    ]

def help
    puts "Please, choose from help, play, list, or exit"
end

def list
    @@songs.each_with_index {|song,index|
    song_index = index + 1
    puts "Play #{song} with the index #{song_index}"
}
end

        # def play_by_index
        #     puts "What song would you like to hear, enter its index?"
        #     song_input = gets.chomp.strip.to_i 
        #     puts "Now playing" + @@songs[song_input-1]		
        # end

        # def play_by_songname
        #     puts "What song2 would you like to hear, enter its name"
        #     song_input_name = gets.chomp.strip
        #     puts "Now playing" + song_input_name
        # end

def play
    puts "What song would you like to hear? Please, enter either song name or its index"
    song_request = gets.chomp.strip
    if song_request.to_i != 0
        puts "Now playing " + @@songs[song_request.to_i - 1]
    elsif 
        puts "Now playing " + song_request
    elsif song_request == 0
        puts "Now playing " + @@songs[0]
    end
end

def exit
    puts "Goodbuy"
    puts ""
    puts "Thank you for using Jenya's jukebox"
end

puts "Hello, I'm a Jukebox"
puts "Would you like to listen some music? To start with jukebox enter help"

reply = gets.chomp.strip
    while reply != "exit"         
        case reply
            when "help"
                help
            when "list"
                list
            when "play"
                play
            when "exit"
                exit
            else
                puts "please enter a valid command"
        end
    puts "What's next?"
    reply = gets.chomp.strip
    end

puts "Goodbuy"
puts "Thank you for using Jenya's jukebox"

