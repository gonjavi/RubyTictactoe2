class Turn
    attr_accessor :b, :board, :player
    def initialize(board=["-", "-", "-", "-", "-", "-", "-", "-", "-"] ,player)
        b=0
        @board=board
        player=player
    end
    def turn(board,player)
        state=true
        while state
        # @b recibe x o o y check board mira si no ha sido ocupada
            puts "choose the number for the position"
            b=gets.chomp
            if  b =~ /\d/
                    #continue to check board
                    b=b.to_i
                    b-=1
                    state=false
                    if @board[b] != "-"          
                        puts "the number has been selected choose another number"
                        state=true
                    end
             else
                puts "Please input a numerical position (1-9)"
              
             end
             
            
        end  
         #put on board
         if player=="x"
            @board[b]="x"

         elsif player=="o"
           @board[b]="o"
         end
           return @board
    end


end