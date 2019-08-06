class Board
    attr_accessor :board

    def initialize
        
        @board = ["-", "-", "-", "-", "-", "-", "-", "-", "-"]
    end

    def show_board
        puts @board[0..2].join(" ")
        puts @board[3..5].join(" ")  
        puts @board[6..8].join(" ") 
    end
end

