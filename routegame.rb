require 'bundler'
Bundler.require

options = ['fire', 'water', 'grass']

get '/choose/:element' do
  player = params[:element]
  computer = options.sample

  win = false
  if player == computer
    tie = true
  elsif player == 'fire'
    if computer == 'grass'
      win = true
    end
  elsif player == 'water'
    if computer == 'fire'
      win = true
    end
  elsif player == 'grass'
    if computer == 'water'
      win = true
    end
  end
  'Player chooses ' + player + ' and computer guesses ' + computer
  if win == false
    if tie == true
      'Tie! Nobody wins!'
    end
    'Computer wins!'
  else
    'Player wins!'
  end
end