class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end 
 
def lose?(mine, his)
  mine.upcase!;  his.upcase!
  strategies = ['R', 'P', 'S']
  #if there is not a valid strategy
  if(!strategies.include?(mine) or !strategies.include?(his))
    raise NoSuchStrategyError
  end
  #losing cases, if true, mine loses
  ["RP", "PS", "SR"].include?(mine + his)
end
 
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  #if true game[1] wins and game[0] loses
  if(lose?(game[0][1], game[1][1]))
    p game[1]
  else
    p game[0]
  end
end
 
def rps_tournament_winner(game)
	#Check if we're at a game
  if game[0][0].class==String
	p "Winner:"
    rps_game_winner(game)
  else  # Otherwise recurse and keep going
    a1=rps_tournament_winner(game[0])
    a2=rps_tournament_winner(game[1])
    rps_tournament_winner([a1,a2])
  end
end

p "Testing rps_tournament_winner..."
rps_tournament_winner([
    [	
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
])
