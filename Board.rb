class Board

    def initialize(size)
        @grid = Array.new(size) {Array.new(size)}
    end



    attr_reader :grid

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

end

