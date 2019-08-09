class Check_draw
        #parameter board is an array, bringing the positions played on the board
       def check_draw(board)
        #return true or false depending on the array
        !board.any?("-")
        end
end