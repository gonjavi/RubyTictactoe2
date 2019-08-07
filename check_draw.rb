class Check_draw
        #parameter board is an array, bringing the positions played on the board
       def check_draw(board)
        z=0
            board.each do |x|
                if x!="-"
                    z+=1
                end
                if z==9
                    puts "the game is a draw"
                    
                end

            end
        end
end