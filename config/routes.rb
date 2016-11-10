Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/parameters-game' => 'parameters#parameters_game_method'
  get '/guess-nums' => 'parameters#guess_number_method'
end
