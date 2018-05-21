require './player.rb'
require './turns.rb'
require './question.rb'

class Game
  def initialize
    player1 = Player.new("player1")
    player2 = Player.new("player2")

    @players = [player1, player2]
    @question = Question.new
    @turn = Turn.new(@players)
    @rounds = 0
  end
  def game_on
    @rounds < 6
  end
  def run
    while game_on
      current = @turn.current_player
      other = @turn.other_player
      puts "#{current.name}: #{@question.new_question}"
      ans = gets.chomp
      if @question.verify(ans)
        @turn.current_player.ding
        puts "Answer is Y"
      else
        puts "Answer is N"
      end
      puts "#{current.name}: #{current.score}/3 vs #{other.name} #{other.score}/3"
      @rounds += 1
      if @rounds < 6
        puts
        puts "+++++++++++++ NEXT TURN ++++++++++++++"
        puts
      end
      @turn.next_turn
    end
    sleep(1)
    winner = current.score > other.score ? current.name : other.name
    puts
    puts
    puts "#{winner} wins!"
  end
end
