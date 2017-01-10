require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if ("1".."9").include?(response)
    response = response.to_i - 1
    puts "Playing #{songs[response]}"
  elsif response == songs[0]..songs[8]
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def list(songs)
  songs.each_with_index { |val,index| puts "#{index + 1}. #{val}"}
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  if response == "list"
    list(songs)
  elsif response == "play"
    play(songs)
  elsif response == "help"
    help
  elsif response == "exit"
    exit_jukebox
  end
end
