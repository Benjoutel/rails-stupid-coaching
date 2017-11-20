class QuestionsController < ApplicationController
  def answer
    @question = params[:your_question]
    # @restaurants = RESTAURANTS.select {|r| r[:category] == @category }

    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
