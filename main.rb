require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new
player=Player.new
#b=empty board 
b=board.board
#player x
pl="x"


@play_game = true
while @play_game
        puts "Tic Tac Toe"
       b=board.show_board(b)
       
       if check_win.check_win(b)
                pl= player.change_player
                puts "The winner is player #{pl}"
                exit
       end
        if check_draw.check_draw(b)
                puts "The game is a draw"
                exit
        end
        #b=turn.turn(b,pl)
        #
        state=true
        while state
        #@b recibe x o o y check board mira si no ha sido ocupada
            puts "choose the number for the position"
            a=gets.chomp
            if  a =~ /\d/
                    #continue to check board
                    a=a.to_i
                    a-=1
                    state=false
                    if b[a] != "-"          
                        puts "the number has been selected choose another number"
                        state=true
                    end
             else
                puts "Please input a numerical position (1-9)"
                state=true
             end
        end
         #end while  
         #put on board
         if pl=="x"
            b[a]="x"

         elsif pl=="o"
           b[a]="o"
         end
        #change player
        pl= player.change_player
end