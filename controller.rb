require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( 'models/game' )



get '/home'do
 erb(:home)
end


get '/about_us' do
 erb(:about_us)
end



get '/play' do 
  # @welcome = "Player1, choose between: Rock, Paper, Scissors!"
  erb(:play)
end







get '/play/rock' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2rock)
end


get '/play/paper' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2paper)
end



get '/play/scissors' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2scissors)
end









get '/play/rock' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2paper)
end


get '/play/paper' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2paper)
end



get '/play/scissors' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2paper)
end









get '/play/rock' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2scissors)
end


get '/play/paper' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2scissors)
end



get '/play/scissors' do 
  # @welcome = "Player 2, your turn to play: Rock, Paper or Scissors??"
  erb(:player2scissors)
end












get '/play/rock/paper' do 
  @result = "Player 2, you win with Paper!"
      erb(:result)
end



get '/play/rock/scissors' do 
  @result = "Player 1, you win with Rock!"
      erb(:result)
end



get '/play/paper/rock' do 
  @result = "Player 1, you win with Paper!"
      erb(:result)
end


get '/play/paper/scissors' do 
  @result = "Player 2, you win with Scissors!"
        erb(:result)
end



get '/play/scissors/paper' do 
  @result = "Player 1, you win with Scissors!"
        erb(:result)
end



get '/play/scissors/rock' do 
  @result = "Player 2, you win with Rock!"
        erb(:result)
end



get '/play/:hand1/:hand2' do
    if params['hand1'] == params['hand2']
      @result = "It's a draw!"
      erb(:result)
end
  
  

end   