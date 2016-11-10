class ParametersController < ApplicationController
  def parameters_game_method
    @app_name = params['app_name']
    render 'parameters-game.html.erb'
  end
end