class GamesController < ApplicationController
  VOWELS = %W(A E I O U)
  def score
    @word = params[:new]
  end
  def new
    # @letters = Array.new(10) { ("a".."z").to_a.sample }
    @letters = Array.new(5) { VOWELS.sample }
    @letters += (("A".."Z").to_a - VOWELS).sample
    @letters.shuffle!
  end
end
