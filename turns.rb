class Turn

  def initialize(players)
    @players = players
  end

  def current_player
    @players.first
  end

  def next_turn
    @players.rotate!
  end

  def other_player
    @players.last
  end


end
