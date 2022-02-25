class Site::SearchController < ApplicationController
  def questions
    @questions = Question.includes(:answers).page(params[:page])
  end
end
