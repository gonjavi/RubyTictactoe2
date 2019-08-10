class Check_win
  attr_reader :board, :board_o, :board_x, :b
  def initialize
    @board_o=0
    @board_x=0
    @b=0
    @win_positions =
      [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  end
  def check_win(board)
    win=false
    @win_positions.each do |row|
      row.each do |cell|
        if board[cell]=="o"
          @board_o +=1
          if  @board_o==3
            win=true
          end
        elsif board[cell]=="x"
          @board_x+=1
          if  @board_x==3
            win=true
          end
        end
      end
        @board_x=0 
        @board_o=0
    end
      return win
  end
end