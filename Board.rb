class Board
require_relative "card.rb"

    def initialize(size)
        @grid = Array.new(size) {Array.new(size)}
    end



    attr_reader :grid

    # def make_cards(size)
    #   arr = [:A, :A, :B, :B, :C, :C, :D, :D]
    #     return arr[0...size * size]
    # end

    def populate(cards)
        cards.shuffle!
        @grid.each_index do |i|
            @grid[i].each_index do |j|
                @grid[i][j] = cards.pop
            end
        end

    end

    def render
        @grid.each do |row|
            puts row.map {|card| card.to_s}.join (" ")
        end
    end

    def won?
      @grid.flatten.all? { |card| card.face_up}
    end

end

