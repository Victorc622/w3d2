require_relative "card"
require_relative "Board"
require "byebug"

class Game
    attr_reader :board

  def initialize(size)
    @board = Board.new(size)
    @nil_card = Card.new(nil)
    @previous_guess = @nil_card
    @current_guess = nil
    @guessed_pos = []
    @size = size
  end

  def play
    cards = @board.make_cards(@size)
    @board.populate(cards)
  while !@board.won?
    @board.render
    print "Enter the position for the card you want to flip"
    pos = gets.chomp "0 0"
    arr = pos.split(" ")
    new_array = arr.map{|ele| ele.to_i}
    make_guess(new_array)
  end
end

  def make_guess(pos)

    if @previous_guess == @nil_card
        @guessed_pos = pos
        @board[pos].reveal
        @previous_guess = @board[pos]

        
    else
   
      @board[pos].reveal

      sleep (3)

      @current_guess = @board[pos]
      
      unless @previous_guess == @current_guess
       
        @previous_guess.hide
        @board[pos].hide
      end

    end
    
    system("clear")
  end

end