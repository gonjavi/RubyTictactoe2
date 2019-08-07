require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new

player=Player.new
turn=Turn.new(board.board,player)

@play_game = true
while @play_game
        puts "Tic Tac Toe"

        board.show_board

        check_win.check_win(board.board)

        check_draw.check_draw(board.board)

        turn.turn
        turn.check_board
        turn.put_on_board
        player.change_player
end