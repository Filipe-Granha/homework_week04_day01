require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/game' )





get '/play' do 
  return "Welcome to the game. Player1, choose between:
  rock, 
  paper, 
  scissors."
end


get '/play/:hand1' do 
  return "Player 2, your turn to play."
end



get '/play/rock/paper' do 
  @result = "Player 2, your win."
      erb(:result)
end



get '/play/rock/scissors' do 
  @result = "Player 1, your win."
      erb(:result)
end



get '/play/paper/rock' do 
  @result = "Player 1, your win."
      erb(:result)
end


get '/play/paper/scissors' do 
  @result = "Player 2, your win."
        erb(:result)
end



get '/play/scissors/paper' do 
  @result = "Player 1, your win."
        erb(:result)
end



get '/play/scissors/rock' do 
  @result = "Player 2, your win."
        erb(:result)
end



get '/play/:hand1/:hand2' do
  
    if params['hand1'] == params['hand2']
      return "It's a draw!"
    
    end
  
  end   