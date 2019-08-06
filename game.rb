class Game
    
    def initialize
        @board_o=0
        @board_x=0
        @b=0

    end
    def play
        @play_game = true
        while @play_game
            puts "Tic Tac Toe"          
            show_board
            check_win
            check_draw
            turn
            change_player
        end
      
    end 
    
    def end_game        
        puts "The game has finished!!"
        exit
    end
    
    def check_win 
 
        #checking each position in the array x inside winnig positions
        @win_positions.each do |row|
            row.each do |cell|
                    if @board[cell]=="o"
                        @board_o +=1
                        if  @board_o==3
                            puts "the winner is player o"
                            end_game
                        end

                    elsif @board[cell]=="x"
                          
                        @board_x+=1
                        if  @board_x==3
                            puts "the winner is player x"
                        end_game
                        end
                    end
            end
            @board_x=0 
            @board_o=0
                
            
        end

    end
      
      # turno- poner x ó o
    def turn
        # @b recibe x o o y check board mira si no ha sido ocupada
        
            @b=gets.chomp
            if  @b =~ /\d/
                check_board
                 
             else
                puts "Please input a numerical position (1-9)"
                turn
             end
            
            put_on_board
      end
      def check_board
            @b=@b.to_i
         @b-=1
         if @board[@b] != "-"          
            puts "the number has been eelcted choose another number"
            turn
         end
      end

      def put_on_board
        if @player=="x"
            @board[@b]="x"

        elsif @player=="o"
            @board[@b]="o"
        end
      end
end

game=Game.new
game.end_game