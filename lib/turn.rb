class Turn
    attr_accessor :b, :board, :player
    def initialize(board=["-", "-", "-", "-", "-", "-", "-", "-", "-"] ,player)
        @b=0
        @board=board
        @player=player
    end
    def turn
        # @b recibe x o o y check board mira si no ha sido ocupada
            puts "choose the number for the position"
            @b=gets.chomp
            if  @b =~ /\d/
                check_board
                 
             else
                puts "Please input a numerical position (1-9)"
                turn
             end
            
            put_on_board
    end
      #board parameter is an array with the positions to be checked
    def check_board
            @b=@b.to_i
         @b-=1
         if @board[@b] != "-"          
            puts "the number has been selected choose another number"
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