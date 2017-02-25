class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # POST /votes
  def create
    @answer = Answer.find(params[:answer_id])
    @vote = Vote.new(answer_id: @answer.id, username: session[:username])

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @answer.question, notice: 'Vote was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end
end
