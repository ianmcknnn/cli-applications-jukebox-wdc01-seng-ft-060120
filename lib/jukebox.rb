def exit_jukebox
  puts "Goodbye"
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip

  if (1..9).include?(input.to_i)
    puts "Playing " + array[input.to_i - 1]
  elsif array.include?(input)
    puts "Playing #{input}"
  else 
    invalid_input  
  end
end

def invalid_input
  puts "Invalid input, please try again"
end

def list(array)
  array.each_with_index do |song, index|
    puts (index + 1).to_s + ". " + song
  end
end

def help
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def prompt_user
  puts "Please enter a command:"
end

def get_user_input
  gets.strip
end

def run(array)
  prompt_user
  input = get_user_input

  case input
  when 'help'
    help
  when 'exit'
    exit_jukebox 
  when 'list'
    list(array)
  when 'play'
    play(array)
  end
end

