require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new

player=Player.new
turn=Turn.new(board.board,player)


@play_game = true
#while @play_game
        puts "Tic Tac Toe"

        b=board.show_board
       
        check_win.check_win(b)

        check_draw.check_draw(b)

        b=turn.turn(b,player)
        #urn.check_board
        #turn.put_on_board
        player.change_player
#end