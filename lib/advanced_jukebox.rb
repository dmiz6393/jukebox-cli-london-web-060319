#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/dmiz/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/dmiz/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/dmiz/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/dmiz/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/dmiz/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/dmiz/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts " I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  "
end



def list(my_songs)
  my_songs.keys.each do |song|
    puts song
end
end	


def play(my_songs)
  puts "Please enter a song name"
  reponse = gets.chomp
  if my_songs.keys.include?(response)
    song = my_songs[response]
    system "open #{song}"
  else
    puts "Invalid input, please try again"
  end
end	end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
loop do
    puts "Please enter a command:"
    reponse = gets.chomp
    case  reponse
    when "exit"
      exit_jukebox
      break
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    else
      help
    end
  end
end

run(songs)
