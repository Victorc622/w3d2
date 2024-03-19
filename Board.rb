require_relative "card.rb"
require "byebug"

class Board


    def initialize(size)
        @grid = Array.new(size) {Array.new(size)}
    end



    attr_reader :grid

    def make_cards(size)
        
        card_array = []
        arr = [:A, :B, :C]

        while card_array.length < size * size
              
                value = arr.shift
                2.times {card_array <<Card.new(value)}
            
        end

        return card_array

    end

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


    def reveal (pos)
        card = self[pos]
        card.reveal unless card.face_up
        card.value 
    end

    def [](pos)
        row, col = pos
        @grid[row, col]
    end

  

    def []=(pos, val)
        row, col = pos
        @grid [row, col] = val
    end




end

