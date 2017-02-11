# import pry
#require 'pry'
class CommandLine
  def self.begin
    puts "Username:"
    login = gets.chomp
    puts "Password:"
    password = gets.chomp
    user_logged = ValidateUser.validate? login, password
    if user_logged
      menu
    else
      puts "The credentials are incorrect"
    end
  end
private
  def self.menu
    puts "The options of menu is:\n 1. Count words \n 2. Count Letters \n 3. reverse the text"
    puts "4. Convert the text to uppercase 5. Convert the text to lowercase"
    option = gets.chomp
    puts "Ingresa la frase"
    string = gets.chomp
    # debug with pry
    #binding.pry
    case option
      when "1"
        puts OptionsMenu.count_words(string)
      when "2"
        OptionsMenu.count_letters(string)
      when "3"
        OptionsMenu.reverse_text(string)
      when "4"
        OptionsMenu.text_uppercase(string)
      when "5"
        OptionsMenu.text_lowercase(string)
    end
  end
end
class ValidateUser
  def self.validate? (login,password)
    login == 'admin' && password == '12345'
  end
end

class OptionsMenu
  def self.count_words(string)
    string.split(" ").count
  end
  def self.count_letters(string)
    string
  end
  def self.reverse_text(string)
    string
  end
  def self.text_uppercase(string)
    string
  end
  def self.text_lowercase(string)
    string
  end
end

CommandLine.begin
