class Game
  attr_reader :rooms
  def initialize()
    @rooms = []
  end
  def add_room (room)
    @rooms << room
  end
end

class Room
  attr_reader :description, :ext
  def initialize(description,ext)
    @description = description
    @ext = ext
  end
end

class Player
  attr_reader :life
  def initialize
    @life = 5
  end
  def play(ext,room)
    if (ext == room.ext)
      true
    else
      @life -=1
      puts "There is no exit there"
      false
    end
  end
end

game = Game.new

game.add_room(Room.new('room 1', 'E'))
game.add_room(Room.new('room 2', 'N'))
game.add_room(Room.new('room 3', 'O'))
game.add_room(Room.new('room 4', 'S'))
game.add_room(Room.new('room 5', 'N'))

player = Player.new

number_room = 0
available_comands = ["N","S","E","O"]

while player.life!=0 do
  puts "You are in #{game.rooms[number_room].description} \n >"
  ext = gets.chomp
  if (!available_comands.include? ext)
    puts "I don't understand"
  else
    if (player.play(ext,game.rooms[number_room]))
      number_room += 1
    end
    if (number_room == 4)
      puts "Congratulations you win game"
      exit
    end
  end
  if (player.life==0)
    puts "Game over"
  end
end
