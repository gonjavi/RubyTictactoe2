require_relative 'lib/classes.rb'

puts "Tic Tac Toe"


board=Board.new
board.show_board

check_win=Check_win.new
check_win.check_win