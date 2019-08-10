require_relative 'lib/classes.rb'
board=Board.new
check_win=Check_win.new
check_draw=Check_draw.new
player=Player.new
b=board.board
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
    state=true
    while state
      puts "choose the number for the position"
      a=gets.chomp
      if  a =~ /^\d+$/
                    
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
    if pl=="x"
      b[a]="x"
    elsif pl=="o"
      b[a]="o"
    end
  pl= player.change_player
end