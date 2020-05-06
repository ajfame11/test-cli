class Cli
  def run
    puts " "
    puts "Hello and welcome to Netflix Top10!"
    puts " "
    puts "Please choose a genre."
    puts "1. action"
    puts "2. adventure"
    puts "3. comedy"
    puts "4. horror"
    puts "5. romance"
    puts " "
    @genre = gets.strip
  end
end

### Handle INPUT from User and OUTPUT to User