class Board
  def initialize
    @positions = {"a8" => "0,0", "b8" => "0,1", "c8" => "0,2", "d8"  => "0,3",
    "e8" => "0,4", "f8" => "0,5", "g8" => "0,6" => "h8" => "0,7",
    "a7" => "1,0", "b7" => "1,1", "c7" => "1,2", "d7"  => "1,3",
    "e7" => "1,4", "f7" => "1,5", "g7" => "1,6" => "h7" => "1,7"}
  end
end

class ChessValidator
  def self.check(board,origin,destination)
  end
end


pieces = Array[["R","N", "B", "Q", "K", "B", "N", "R"], ["P", "P", "P", "P", "P", "P", "P", "P" ]]
ChessValidator.check("")
