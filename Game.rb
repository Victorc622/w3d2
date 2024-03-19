require_relative "card"
require_relative "Board"
require "byebug"

class Game
    attr_reader :board

  def initialize(size)
    @board = Board.new(size)
    @previous_guess = nil
    @guessed_pos = []
    @size = size
  end

  def play
    cards = @board.make_cards(@size)
    @board.populate(cards)
  while !@board.won?
    @board.render
    print "Enter the position for the card you want to flip"
    pos = gets.chomp
    arr = []
    pos.each_char { |ele| arr << ele }
  
    make_guess(array)
  end
end

  def make_guess(pos)
    if @previous_guess == nil
        @guessed_pos = pos
        @board.grid [pos].reveal
        @previous_guess = @board.grid[pos]

        
    else
      
      @board.grid[pos].reveal

      sleep (3)

      
      if @previous_guess.face_value != @board.grid[pos]
        @previous_guess.hide
        @board.grid[pos].hide
      end

    end
    system("clear")
  end

end