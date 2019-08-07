require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new

player=Player.new
turn=Turn.new(board.board,player)

puts "Tic Tac Toe"



board.show_board


check_win.check_win(board.board)


check_draw.check_draw(board.board)




turn.turn


player.change_player
