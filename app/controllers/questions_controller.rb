class QuestionsController < ApplicationController
  def ask
  end
  
  def answer
    @question = params[:question]
    @answer = Coach_answer(@question)
  end

  private

  def Coach_answer(question)
    if question.nil?
      'Please ask a question.'
    elsif question.downcase == 'i am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
