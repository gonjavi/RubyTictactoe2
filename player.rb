class Player
    def initialize
        @player="x"
    end
     def change_player
         @player== "x" ? @player="o" : @player="x"
         
      end
      def print
        puts "#{@player}"
      end
end

player=Player.new
player.print
player.change_player
player.print
player.change_player
player.print