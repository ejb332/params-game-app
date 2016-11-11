class ParametersController < ApplicationController
  def parameters_game_method
    @app_name = params['app_name'].upcase
      if @app_name[0] == 'A'
        @app_name = "Hey, your name starts with the first letter of the alphabet!"
      end
    render 'parameters-game.html.erb'
  end

  def params_game
    @url_seg = params['name_of_game']
    render 'params-game.html.erb'
  end

  def guess_number_method
    @guess = params['guess'].to_i
    @answer = params['answer']
    if @guess > 42
      @answer = "Guess a lower number"
    elsif @guess < 42
      @answer = "Guess a higher number."
    else
      @answer = "That's it! 42"
    end
    render 'guess-nums.html.erb'
  end

#   def guess_number
#     @guess = params['chance'].to_i
#     @answer = params['answer']
#     if @guess > 42
#       @answer = "Guess a lower number"
#     elsif @guess < 42
#       @answer = "Guess a higher number."
#     else
#       @answer = "That's it! 42"
#     end
#     render 'guessanum.html.erb'
#   end

  def numbers_game
    render 'form.html.erb'
  end

  def numbers_result
    @guess = params['guess'].to_i
    @answer = params['answer']
      if @guess > 42
        @answer = "guess a lower number next time."
      elsif @guess < 42
        @answer = "guess a higher number next time."
      else
        @answer = "not guess again because you guessed correctly! The answer is 42."
      end
    render 'form_result.html.erb'
  end
end