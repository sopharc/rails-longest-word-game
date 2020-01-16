class GamesController < ApplicationController

  # page where I see the grid and submit my answer
  def new
    @letters = ('A'..'Z').to_a.sample(9)
  end

  # see the result
  def score
    # get letters from the form
    @inputletters = params[:guess].upcase
    # get the letters from the grid
    @randomletters = params[:grid]
    # for each letter in the guess compare to each letter in the grid
    # if they dont match then delete
    @result = @inputletters.chars.all? { |letter| @inputletters.count(letter) <= @randomletters.count(letter) }
  end
end
