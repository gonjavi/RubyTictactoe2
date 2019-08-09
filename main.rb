require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new

player=Player.new
turn=Turn.new
b=["-", "-", "-", "-", "-", "-", "-", "-", "-"]
#star player x
pl="x"


@play_game = true
while @play_game
        puts "Tic Tac Toe"

        b=board.show_board(b)
       
       if check_win.check_win(b)
                pl= player.change_player
                puts "The winner is player #{pl}"
       end

        check_draw.check_draw(b)

        b=turn.turn(b,pl)
        
      
        pl= player.change_player
end