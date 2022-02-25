class Site::SearchController < ApplicationController
  layout 'site'
  def questions
    # @questions = Question.includes(:answers).page(params[:page])
    @questions = Question.search(params[:page], params[:term])
  end
end
