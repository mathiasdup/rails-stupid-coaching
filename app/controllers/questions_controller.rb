class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @message = params[:question]
      if @message == 'I am going to work'
        @answer = 'Great!'
      elsif @message.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      elsif @message.blank?
        @answer = 'give me something'
      else
        @answer = "i don't care"
      end
  end
end
