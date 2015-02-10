require 'bundler'
Bundler.require

options = ['1', '2', '3', '4', '5']
get '/guess/:number' do
  player = params[:number]
  computer = options.sample

  'You guessed ' + player + ' and the computer guessed ' + computer
  if player == computer
    'You picked the same number!'
  end
end