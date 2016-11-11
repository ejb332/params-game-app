Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/parameters-game' => 'parameters#parameters_game_method'
  get '/guess-nums' => 'parameters#guess_number_method'
  get '/params-game/:name_of_game' => 'parameters#params_game'
  get '/guess-nums/:chance' => 'parameters#guess_number'
  get '/form_numbers' => 'parameters#numbers_game'
  post '/form_result_numbers' => 'parameters#numbers_result'
end