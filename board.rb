class Board
    attr_accessor :board, :board_o, :board_x, :b

    def initialize
        #to intialize -start method and winning positions
        start
        @win_positions =
      [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    end

    def start
        #@turns_played = 0
         @player = "x"
        @board = ["-", "-", "-", "-", "-", "-", "-", "-", "-"]
        @oard_o=0
        @board_x=0
        @b=0
    end
    def show_board(board = @board)
              
        puts board[0..2].join(" ")
        puts board[3..5].join(" ")  
        puts board[6..8].join(" ") 
    end
end

board = Board.new
board.show_board