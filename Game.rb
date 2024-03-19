class Game
    attr_reader :board

  def initialize(size)
    @board = Board.new(size)
    @previous_guess = nil
    @guessed_pos = []
  end

  def play
  while !board.won?
    @board.render
    print "enter a row and column for guess 1"
    pos = gets.chomp
    arr = []
    pos.each_char { |ele| array << ele }
  end
end

  def make_guess(pos)
    if @previous_guess == nil
        @guessed_pos = pos
        @board.grid [pos].reveal

  end
end