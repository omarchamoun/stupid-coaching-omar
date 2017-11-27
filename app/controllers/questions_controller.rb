class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question_to_coach]
    if @your_message.include?('?')
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @your_message=="I am going to work right now!"
      @coach_answer = ""
    elsif @your_message.upcase == @your_message
      @coach_answer = "I can feel your motivation!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
