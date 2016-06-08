class PagesController < ApplicationController
  def index
    firstWord = params[:first]
    secondWord = params[:second]
    word = Fusion.new firstWord, secondWord
    if firstWord && secondWord
      @newWord = word.execute
    end
  end
end
