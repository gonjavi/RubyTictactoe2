 class Check_win
    attr_reader :board, :board_o, :board_x, :b
    def initialize
        @board_o=0
        @board_x=0
        @b=0
        #@board = Board.new
        @win_positions =
      [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    end
    
    #parameter board is an array, bringing the positions played on the board
    def check_win(board)
        win=false
        #checking each position in the array x inside winnig positions
        @win_positions.each do |row|
            row.each do |cell|
                    if board[cell]=="o"
                       @board_o +=1
                        if  @board_o==3
                            #puts "the winner is player o"
                            #puts "The game has finished!!"
                            win=true
                            
                        end

                    elsif board[cell]=="x"
                          
                        @board_x+=1
                        if  @board_x==3
                            #puts "the winner is player x"
                            #puts "The game has finished!!"
                            #exit
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