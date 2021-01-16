class GamesController < ApplicationController

  def new
    # The new action will be used to display a new random grid and a form.
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @words = params[:words]
    @included = included?(@word, @letters)
  end

private

  def included?(word, letters)
    word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
  end

end
